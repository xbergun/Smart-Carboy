// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bixos_project/core/constant/app_color.dart';
import 'package:bixos_project/core/constant/app_text_styles.dart';
import 'package:bixos_project/core/constant/asset_path.dart';
import 'package:bixos_project/core/utils/screen_size.dart';
import 'package:bixos_project/feature/home/viewmodel/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppWaterCard extends StatelessWidget {
  const AppWaterCard({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (BuildContext context, HomeProvider homeProvider, Widget? widget) {
        return GestureDetector(
          onTap: () {
            homeProvider.visibleOn(index: index);
          },
          child: Padding(
            padding: EdgeInsets.only(
              top: ScreenSize().dynamicHeight(.01),
              right: ScreenSize().dynamicHeight(.007),
              left: ScreenSize().dynamicHeight(.007),
            ),
            child: Stack(
              children: [
                Container(
                  height: ScreenSize().dynamicWidth(.241),
                  width: ScreenSize().dynamicWidth(.241),
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
                ),
                Visibility(
                  visible: homeProvider.waterCarboys[index].waterNumber >= 1,
                  child: Container(
                    height: ScreenSize().dynamicWidth(.241),
                    width: ScreenSize().dynamicWidth(.241),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.darkblue.withOpacity(.5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox.shrink(),
                        Text(
                          "+${homeProvider.waterCarboys[index].waterNumber}",
                          style: AppTextStyles.panton30Px950.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                homeProvider.minusOneWaterNumber(index: index);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.white,
                                ),
                                height: ScreenSize().dynamicHeight(.03),
                                width: ScreenSize().dynamicHeight(.03),
                                child: Icon(
                                  Icons.exposure_minus_1_rounded,
                                  color: AppColors.darkblue,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                homeProvider.appendOneWaterNumber(index: index);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.white,
                                ),
                                height: ScreenSize().dynamicHeight(.03),
                                width: ScreenSize().dynamicHeight(.03),
                                child: Icon(
                                  Icons.plus_one_rounded,
                                  color: AppColors.darkblue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
