// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:bixos_project/core/constant/app_color.dart';
import 'package:bixos_project/core/constant/app_text_styles.dart';
import 'package:bixos_project/core/constant/asset_path.dart';
import 'package:bixos_project/core/init/injection_container.dart';
import 'package:bixos_project/core/sharedWidgets/app_fiiled_button.dart';
import 'package:bixos_project/core/utils/screen_size.dart';
import 'package:bixos_project/feature/home/viewmodel/home_provider.dart';
import 'package:flutter/material.dart';

class PublicAppDrawer extends StatelessWidget {
  const PublicAppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize().dynamicHeight(1),
      width: ScreenSize().dynamicWidth(.7),
      color: AppColors.darkblue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          drawerAppBarMenu(),
          drawerMenus(),
          recommendedWaterBrands(),
          Center(
            child: Container(
              height: ScreenSize().dynamicHeight(.4),
              width: ScreenSize().dynamicWidth(.6),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.2),
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: Offset(0, 4),
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(
                            AssetsPath().backgroundPNG,
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      child: Center(child: Text(serviceLocator<HomeProvider>().waterCarboys[index].title)),
                    ),
                  );
                },
                //TODO: Burası değişecek. Değer duruma göre farklılık gösterecek.
                itemCount: 6,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget drawerAppBarMenu() {
    return Container(
      margin: EdgeInsets.only(
        top: ScreenSize().dynamicHeight(.05),
        left: ScreenSize().dynamicHeight(.03),
      ),
      width: ScreenSize().dynamicWidth(.6),
      decoration: BoxDecoration(
        color: AppColors.lightBlue,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'MENU',
              style: AppTextStyles.roboto16Px700.copyWith(
                color: AppColors.white,
              ),
            ),
            Icon(
              Icons.close,
              color: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget drawerMenus() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColors.lightBlue,
              width: ScreenSize().dynamicWidth(.4),
              height: ScreenSize().dynamicHeight(.04),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: ScreenSize().dynamicHeight(.008)),
                child: Text(
                  'Profil',
                  style: AppTextStyles.roboto16Px700.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      'Sipariş Et',
                      style: AppTextStyles.roboto16Px700.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    'Ayarlar',
                    style: AppTextStyles.roboto16Px700.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget recommendedWaterBrands() {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Center(
        child: AppFiiledButton(
          buttonColor: AppColors.lightBlue,
          buttonText: 'Önerilen Su Markaları',
          buttonTextStyle: AppTextStyles.roboto16Px700.copyWith(color: AppColors.white),
          width: ScreenSize().dynamicWidth(.6),
        ),
      ),
    );
  }
}
