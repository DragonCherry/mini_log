## mini_log

A lightweight logger utility.

## Getting Started

```
logd('Debug log message.');
logi('Debug log message.');
logw('Debug log message.');
loge('Debug log message.');
logc('Debug log message.');
logJson({
  'outerKey': {'innerKey': 'innerValue'}
});
```

## Result

[log] ⚪[2020-10-06 14:27:32.560097] <package:chatbot/main.dart 17:3 in main> Debug log message.

[log] 🔵[2020-10-06 14:27:32.585174] <package:chatbot/main.dart 18:3 in main> Debug log message.

[log] 🤔[2020-10-06 14:27:32.586513] <package:chatbot/main.dart 19:3 in main> Debug log message.

[log] 😡[2020-10-06 14:27:32.587854] <package:chatbot/main.dart 20:3 in main> Debug log message.

[log] 💥[2020-10-06 14:27:32.588777] <package:chatbot/main.dart 21:3 in main> Debug log message.

[log] {
  "outerKey": {
    "innerKey": "innerValue"
  }
}
