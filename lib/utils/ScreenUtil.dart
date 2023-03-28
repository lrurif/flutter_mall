import 'package:flutter/material.dart';


class ScreenUtil {
  static ScreenUtil? _instance;
  double statusHeight = 0;

  factory ScreenUtil() {
    _instance ??= ScreenUtil._();
    return _instance!;
  }

  ScreenUtil._();

  void init(context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    statusHeight = mediaQuery.padding.top;
    print(statusHeight);
  }
}


