// ignore_for_file: prefer_const_constructors

import 'package:bixos_project/core/constant/app_color.dart';
import 'package:bixos_project/core/constant/app_text_styles.dart';
import 'package:bixos_project/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({Key? key, this.hintText, this.width, required this.icon, this.widthContainer}) : super(key: key);
  final String? hintText;
  final double? width;
  final IconData icon;
  final double? widthContainer;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: widthContainer ?? ScreenSize().dynamicWidth(.9),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.white,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Icon(
              icon,
              color: AppColors.white,
            ),
          ),
          SizedBox(
            width: width ?? ScreenSize().dynamicWidth(.7),
            child: TextField(
              cursorColor: AppColors.darkblue,
              decoration: InputDecoration(
                hintText: hintText ?? '',
                hintStyle: AppTextStyles.roboto16Px700.copyWith(
                  color: AppColors.white,
                ),
                border: InputBorder.none,
              ),
              style: AppTextStyles.roboto16Px700.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
