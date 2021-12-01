// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bixos_project/core/constant/app_color.dart';
import 'package:bixos_project/core/constant/app_text_styles.dart';
import 'package:bixos_project/core/constant/asset_path.dart';
import 'package:bixos_project/core/constant/route.dart';
import 'package:bixos_project/core/sharedWidgets/app_fiiled_button.dart';
import 'package:bixos_project/core/sharedWidgets/app_svg_icon.dart';
import 'package:bixos_project/core/sharedWidgets/app_text_field.dart';
import 'package:bixos_project/core/utils/route_manager.dart';
import 'package:bixos_project/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

class CredentialBody extends StatelessWidget {
  const CredentialBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize().screenSize = MediaQuery.of(context).size;
    return Container(
      height: ScreenSize().dynamicHeight(1),
      width: ScreenSize().dynamicWidth(1),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.gradientBlueOneAndThree,
            AppColors.gradientBlueTwo,
            AppColors.gradientBlueOneAndThree,
          ],
        ),
        image: DecorationImage(
          image: AssetImage(
            AssetsPath().backgroundImageLoginPNG,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: ScreenSize().dynamicHeight(.08),
            ),
            child: Image.asset(
              AssetsPath().smartCarboyLogoPNG,
              height: 130,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: ScreenSize().dynamicHeight(.08),
            ),
            child: Column(
              children: [
                AppTextField(
                  height: 60,
                  widthContainer: ScreenSize().dynamicWidth(.62),
                  width: ScreenSize().dynamicWidth(.48),
                  icon: Icons.person,
                  hintText: 'Kullanıcı Adı',
                ),
                AppTextField(
                  height: 60,
                  widthContainer: ScreenSize().dynamicWidth(.62),
                  width: ScreenSize().dynamicWidth(.48),
                  icon: Icons.password,
                  hintText: 'Şifre',
                ),
                AppFiiledButton(
                  onTap: () => Go.to.pageAndRemoveUntil(BottomNavigationBarPageRoute),
                  buttonColor: AppColors.white,
                  buttonText: "Giriş Yap",
                  buttonTextStyle: AppTextStyles.roboto16Px700,
                  width: ScreenSize().dynamicWidth(.62),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: ScreenSize().dynamicWidth(.04),
                  ),
                  width: ScreenSize().dynamicWidth(.62),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppFiiledButton(
                        height: 30,
                        buttonColor: AppColors.white,
                        buttonText: "Kayıt Ol",
                        buttonTextStyle: AppTextStyles.roboto16Px700,
                        width: ScreenSize().dynamicWidth(.24),
                      ),
                      AppFiiledButton(
                        height: 30,
                        buttonColor: AppColors.white,
                        buttonText: "Şifremi Unuttum",
                        buttonTextStyle: AppTextStyles.roboto16Px700,
                        width: ScreenSize().dynamicWidth(.35),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
