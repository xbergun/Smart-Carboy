// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:bixos_project/core/constant/app_color.dart';
import 'package:bixos_project/core/constant/asset_path.dart';
import 'package:bixos_project/core/init/injection_container.dart';
import 'package:bixos_project/feature/home/view/widgets/app_water_card.dart';
import 'package:bixos_project/core/utils/screen_size.dart';
import 'package:bixos_project/feature/home/viewmodel/home_provider.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize().dynamicHeight(.75),
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
            AssetsPath().backgroundPNG,
          ),
          alignment: Alignment.bottomCenter,
        ),
      ),
      width: ScreenSize().dynamicWidth(1),
      child: Padding(
        padding: EdgeInsets.only(
          left: ScreenSize().dynamicWidth(.1),
          right: ScreenSize().dynamicWidth(.093),
          top: ScreenSize().dynamicHeight(.093),
          bottom: ScreenSize().dynamicHeight(.08),
        ),
        child: gridViewBuilder(),
      ),
    );
  }

  Widget gridViewBuilder() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return AppWaterCard(index: index);
      },
      itemCount: serviceLocator<HomeProvider>().waterCarboys.length,
    );
  }
}
