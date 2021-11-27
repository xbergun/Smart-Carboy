// ignore_for_file: prefer_const_constructors

import 'package:bixos_project/core/constant/app_color.dart';
import 'package:bixos_project/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle panton24Px950 = TextStyle(
    color: AppColors.lightBlue,
    fontSize: ScreenSize().dynamicWidth(.06),
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.normal,
  );
  static TextStyle panton30Px950 = TextStyle(
    color: AppColors.lightBlue,
    fontSize: ScreenSize().dynamicWidth(.07),
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.normal,
  );

  static TextStyle roboto20Px900 = TextStyle(
    color: AppColors.lightBlue,
    fontSize: ScreenSize().dynamicWidth(.05),
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.normal,
  );
  static TextStyle roboto16Px700 = TextStyle(
    color: AppColors.lightBlue,
    fontSize: ScreenSize().dynamicWidth(.04),
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  static TextStyle roboto12Px400 = TextStyle(
    color: AppColors.lightBlue,
    fontSize: ScreenSize().dynamicWidth(.03),
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
}
