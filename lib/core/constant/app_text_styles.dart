// ignore_for_file: prefer_const_constructors

import 'package:bixos_project/core/constant/app_color.dart';
import 'package:bixos_project/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle panton24Px950 = TextStyle(
    color: AppColors.lightBlue,
    fontSize: ScreenSize().dynamicWidth(.05),
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.normal,
  );
  static TextStyle panton30Px950 = TextStyle(
    color: AppColors.lightBlue,
    fontSize: ScreenSize().dynamicWidth(.07),
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.normal,
  );
}
