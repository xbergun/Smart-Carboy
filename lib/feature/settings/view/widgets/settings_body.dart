// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:bixos_project/core/constant/app_color.dart';
import 'package:bixos_project/core/constant/app_text_styles.dart';
import 'package:bixos_project/core/sharedWidgets/app_fiiled_button.dart';
import 'package:bixos_project/core/sharedWidgets/app_text_field.dart';
import 'package:bixos_project/core/sharedWidgets/remove_focus.dart';
import 'package:bixos_project/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => removeFocus(context),
      child: Container(
        height: ScreenSize().dynamicHeight(.8),
        width: ScreenSize().dynamicWidth(1),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.blue,
              AppColors.blueGradient,
            ],
          ),
        ),
        child: Column(
          children: [
            profilePhoto(),
            profileMainButtons(),
            profileTextFields(),
            AppFiiledButton(
              width: ScreenSize().dynamicWidth(.9),
              buttonColor: AppColors.darkblue,
              buttonText: 'Kaydet',
              buttonTextStyle: AppTextStyles.roboto16Px700.copyWith(
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget profilePhoto() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: ScreenSize().dynamicWidth(.43),
      width: ScreenSize().dynamicWidth(.43),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: AppColors.lightBlue,
        border: Border.all(
          color: AppColors.white,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          //TODO: backgroundColor kaldırılacak. Yerine background image gelecek.
          backgroundColor: AppColors.green,
          child: Icon(
            Icons.camera_alt,
            size: 36,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }

  Widget profileMainButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppFiiledButton(
            buttonColor: AppColors.darkblue,
            buttonText: 'Profili Düzenle',
            buttonTextStyle: AppTextStyles.roboto16Px700.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w400,
            ),
            height: 40,
            width: ScreenSize().dynamicWidth(.40),
          ),
          AppFiiledButton(
            buttonColor: AppColors.darkblue,
            buttonText: 'Şifre Değiştir',
            buttonTextStyle: AppTextStyles.roboto16Px700.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w400,
            ),
            height: 40,
            width: ScreenSize().dynamicWidth(.40),
          ),
        ],
      ),
    );
  }

  Widget profileTextFields() {
    return Column(
      children: [
        AppTextField(
          hintText: 'Boy',
          icon: Icons.height,
        ),
        AppTextField(
          hintText: 'Kilo',
          icon: Icons.line_weight,
        ),
        AppTextField(
          hintText: 'Yaş',
          icon: Icons.calendar_today,
        ),
        textFieldWater(),
      ],
    );
  }

  Widget textFieldWater() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppTextField(
            widthContainer: ScreenSize().dynamicWidth(.6),
            width: ScreenSize().dynamicWidth(.4),
            hintText: 'Tüketilen Su(Lt)',
            icon: Icons.person,
          ),
          Container(
            height: 40,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.darkblue,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Center(
                    child: Text(
                      '4.5LT',
                      style: AppTextStyles.roboto16Px700.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.add,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
