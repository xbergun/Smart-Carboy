// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:bixos_project/core/constant/app_color.dart';
import 'package:bixos_project/core/constant/app_text_styles.dart';
import 'package:bixos_project/core/constant/asset_path.dart';
import 'package:bixos_project/core/init/injection_container.dart';
import 'package:bixos_project/core/sharedWidgets/app_fiiled_button.dart';
import 'package:bixos_project/core/sharedWidgets/app_svg_icon.dart';
import 'package:bixos_project/core/utils/screen_size.dart';
import 'package:bixos_project/feature/home/viewmodel/home_provider.dart';
import 'package:bixos_project/feature/shop/view/widgets/shop_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopBody extends StatelessWidget {
  const ShopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize().dynamicHeight(.8),
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
      child: Consumer<HomeProvider>(builder: (BuildContext context, HomeProvider homeProvider, Widget? widget) {
        return Column(
          children: [
            shopAppbar(),
            listViewBuilderShop(),
            AppFiiledButton(
              buttonText: 'Toplam Tutar: ${homeProvider.totalPrice.toStringAsFixed(2)} TL',
              buttonColor: AppColors.white,
              buttonTextStyle: AppTextStyles.roboto16Px700.copyWith(
                color: AppColors.darkblue,
              ),
            ),
            SizedBox(
              height: ScreenSize().dynamicHeight(.02),
            ),
            AppFiiledButton(
              onTap: homeProvider.loopWaterCarboyDefault,
              buttonText: 'Siparişi Onayla',
              buttonColor: AppColors.darkblue,
              buttonTextStyle: AppTextStyles.roboto20Px900.copyWith(
                color: AppColors.white,
              ),
            ),
          ],
        );
      }),
    );
  }

  Widget shopAppbar() {
    return Container(
      width: ScreenSize().dynamicWidth(1),
      height: ScreenSize().dynamicHeight(.07),
      color: AppColors.lightBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: ScreenSize().dynamicWidth(.04) + 8,
          ),
          Text(
            "SEPETİM",
            style: AppTextStyles.roboto20Px900.copyWith(
              color: AppColors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: AppSvgIcon(
              assetPath: AssetsPath().shopSVG,
              color: AppColors.white,
              percent: .04,
            ),
          ),
        ],
      ),
    );
  }

  Widget listViewBuilderShop() {
    return Container(
      height: ScreenSize().dynamicHeight(.5),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ShopCard(index: index),
          );
        },
        itemCount: serviceLocator<HomeProvider>().waterCarboys.length,
      ),
    );
  }
}
