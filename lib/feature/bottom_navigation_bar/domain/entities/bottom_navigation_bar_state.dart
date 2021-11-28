// ignore_for_file: constant_identifier_names

import 'package:bixos_project/core/constant/app_color.dart';
import 'package:bixos_project/feature/home/view/widgets/home_body.dart';
import 'package:bixos_project/feature/settings/view/widgets/settings_body.dart';
import 'package:bixos_project/feature/shop/view/widgets/shop_body.dart';
import 'package:flutter/material.dart';

enum BottomNavigationBarState { SHOP, HOME, SETTINGS }

extension BottomNavigationBarStateExtension on BottomNavigationBarState {
  int stateToPageIndex() {
    switch (this) {
      case BottomNavigationBarState.SHOP:
        return 0;
      case BottomNavigationBarState.HOME:
        return 1;
      case BottomNavigationBarState.SETTINGS:
        return 2;
    }
  }

  BottomNavigationBarState indexToState(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return BottomNavigationBarState.SHOP;
      case 1:
        return BottomNavigationBarState.HOME;
      case 2:
        return BottomNavigationBarState.SETTINGS;
      default:
        return BottomNavigationBarState.HOME;
    }
  }

  Color backgroundColorScaffold() {
    switch (this) {
      case BottomNavigationBarState.SHOP:
        return AppColors.darkblue;
      case BottomNavigationBarState.HOME:
        return AppColors.darkblue;
      case BottomNavigationBarState.SETTINGS:
        return AppColors.darkblue;
    }
  }

  Widget buildBody() {
    switch (this) {
      case BottomNavigationBarState.SHOP:
        return const ShopBody();
      case BottomNavigationBarState.HOME:
        return const HomeBody();
      case BottomNavigationBarState.SETTINGS:
        return const SettingsBody();
    }
  }
}
