library mini_log;

import 'dart:convert';
import 'dart:developer';

import 'package:stack_trace/stack_trace.dart';

void logd(dynamic msg) {
  log(_createMessage('⚪', msg));
}

void logi(dynamic msg) {
  log(_createMessage('🔵', msg));
}

void logw(dynamic msg) {
  log(_createMessage('🤔', msg));
}

void loge(dynamic msg) {
  log(_createMessage('😡', msg));
}

void logc(dynamic msg) {
  log(_createMessage('💥', msg));
}

void logJson(dynamic value) {
  if (value is String) {
    final map = jsonDecode(value);
    log(JsonEncoder.withIndent('  ').convert(map));
  } else {
    log(JsonEncoder.withIndent('  ').convert(value));
  }
}

String _createMessage(String prefix, dynamic msg) {
  final now = DateTime.now();
  String stack;
  if (Trace.current().frames.length > 3) {
    stack = Trace.current().frames[2].toString();
  }
  if (stack == null) {
    return '$prefix[$now] $msg';
  } else {
    return '$prefix[$now] <$stack> $msg';
  }
}
