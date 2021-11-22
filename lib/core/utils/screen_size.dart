// ignore_for_file: prefer_final_fields, unused_field

import 'package:flutter/material.dart';

class ScreenSize {
  static ScreenSize _instance = ScreenSize._init();
  ScreenSize._init();
  factory ScreenSize() {
    return _instance;
  }
  late Size screenSize;
  double dynamicHeight(double percent) {
    return screenSize.height * percent;
  }

  double dynamicWidth(double percent) {
    return screenSize.width * percent;
  }
}
