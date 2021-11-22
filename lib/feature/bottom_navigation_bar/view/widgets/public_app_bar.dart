// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bixos_project/core/constant/app_color.dart';
import 'package:bixos_project/core/constant/app_text_styles.dart';
import 'package:bixos_project/core/constant/asset_path.dart';
import 'package:bixos_project/core/sharedWidgets/app_svg_icon.dart';
import 'package:bixos_project/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

class PublicAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PublicAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      leading: Padding(
        padding: EdgeInsets.only(
          left: ScreenSize().dynamicWidth(.07),
        ),
        child: AppSvgIcon(
          assetPath: AssetsPath().logoSVG,
          percent: .03,
        ),
      ),
      title: RichText(
        text: TextSpan(
          text: 'AKILLI',
          style: AppTextStyles.panton24Px950,
          children: <TextSpan>[
            TextSpan(
              text: 'DAMACANA',
              style: AppTextStyles.panton24Px950.copyWith(color: AppColors.darkblue),
            ),
          ],
        ),
      ),
      centerTitle: false,
      elevation: 0,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: ScreenSize().dynamicWidth(.07)),
          child: AppSvgIcon(assetPath: AssetsPath().menuSVG, percent: .03),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(ScreenSize().dynamicHeight(.08));
}
