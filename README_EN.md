> [!IMPORTANT]
>
> There is currently a crash issue with this library when submitting for review to generate a signed Release package (see details in [#1](https://github.com/SageMik/sqlite3-ohos.dart/issues/1) ). Please do not use it.
>
> This crash is quite tricky, and since we aren't very knowledgeable in this area, we hope that experts will not hesitate to offer their insights and help us resolve this problem together.

# sqlite3-ohos.dart

[中文](README.md) | **English**

> [!TIP]
>
> This is one of the forked versions of [sqlite.dart](https://github.com/simolus3/sqlite3.dart), supporting _HarmonyOS_ based on **[鸿蒙突击队 / Flutter 3.22.0](https://gitee.com/harmonycommando_flutter/flutter/tree/oh-3.22.0)**. It includes additional Chinese documentation.

This repository contains SQLite Dart/Flutter packages to use SQLite in Dart via `dart:ffi`.

The main package is [`sqlite3`](sqlite3), which contains all the Dart APIs and their implementations. As a pure Dart library without the dependency of Flutter, it can be used both in Flutter apps and standalone Dart applications.

`sqlite3_flutter_libs` and `sqlcipher_flutter_libs` contain no Dart code. Flutter developers can add these packages to bundle native libraries in their apps. Once the native libraries are loaded, Dart APIs can be used to access SQLite. Details here: [`sqlite3`](sqlite3).

Example: [`sqlite3/example/main.dart`](sqlite3/example/main.dart)

## HarmonyOS Support

| Package                                           | Support                                            |
| ------------------------------------------------- |----------------------------------------------------|
| [`sqlite3`](sqlite3)                               | Available, please refer to [here](sqlite3#sqlite3) |
| [`sqlite3_flutter_libs`](sqlite3_flutter_libs)     | Available, same as above                   |
| [`sqlcipher_flutter_libs`](sqlcipher_flutter_libs) | Not yet                                            |
| [`sqlite3_web`](sqlite3_web)                       | Irrelevant                                         |
| [`integration_tests`](integration_tests)           | Example usage, not yet                             |
