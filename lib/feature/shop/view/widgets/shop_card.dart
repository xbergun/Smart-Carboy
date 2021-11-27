// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:bixos_project/core/constant/app_color.dart';
import 'package:bixos_project/core/constant/app_text_styles.dart';
import 'package:bixos_project/core/constant/asset_path.dart';
import 'package:bixos_project/core/utils/screen_size.dart';
import 'package:bixos_project/feature/home/viewmodel/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (BuildContext context, HomeProvider homeProvider, Widget? widget) {
        return homeProvider.waterCarboys[index].waterNumber != 0
            ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    imageLogo(),
                    shopTitleSubtitleWaterNumber(homeProvider),
                  ],
                ),
              )
            : SizedBox.shrink();
      },
    );
  }

  Widget imageLogo() {
    return Container(
      height: ScreenSize().dynamicHeight(.20),
      width: ScreenSize().dynamicWidth(.36),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.green,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(6),
        gradient: RadialGradient(
          colors: [
            AppColors.white,
            AppColors.gradientRadial,
          ],
        ),
        image: DecorationImage(
          image: AssetImage(
            AssetsPath().backgroundPNG,
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget shopTitleSubtitleWaterNumber(HomeProvider homeProvider) {
    return SizedBox(
      width: ScreenSize().dynamicWidth(.50),
      height: ScreenSize().dynamicHeight(.20),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  homeProvider.waterCarboys[index].title,
                  style: AppTextStyles.roboto16Px700.copyWith(color: AppColors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${homeProvider.waterCarboys[index].price} TL",
                  style: AppTextStyles.roboto12Px400.copyWith(color: AppColors.white),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: ScreenSize().dynamicHeight(.05),
                width: ScreenSize().dynamicWidth(.41),
                color: AppColors.darkblue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        homeProvider.minusOneWaterNumber(index: index);
                      },
                      child: Container(
                        color: AppColors.white,
                        width: ScreenSize().dynamicHeight(.05),
                        height: ScreenSize().dynamicHeight(.05),
                        child: Icon(
                          Icons.remove,
                          color: AppColors.darkblue,
                        ),
                      ),
                    ),
                    Text(
                      homeProvider.waterCarboys[index].waterNumber.toString(),
                      style: AppTextStyles.roboto16Px700.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        homeProvider.appendOneWaterNumber(index: index);
                      },
                      child: Container(
                        color: AppColors.white,
                        width: ScreenSize().dynamicHeight(.05),
                        height: ScreenSize().dynamicHeight(.05),
                        child: Icon(
                          Icons.add,
                          color: AppColors.darkblue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
