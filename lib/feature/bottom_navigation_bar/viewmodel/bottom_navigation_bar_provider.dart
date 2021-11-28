// ignore_for_file: unused_field, prefer_final_fields, prefer_const_constructors

import 'package:bixos_project/feature/bottom_navigation_bar/domain/entities/bottom_navigation_bar_state.dart';
import 'package:bixos_project/feature/home/view/widgets/home_body.dart';
import 'package:bixos_project/feature/settings/view/widgets/settings_body.dart';
import 'package:bixos_project/feature/shop/view/widgets/shop_body.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarProvider with ChangeNotifier {
  int _currentIndex = 1;
  BottomNavigationBarState selectedBarState = BottomNavigationBarState.HOME;
  int get currentIndex => _currentIndex;
  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  List bodies = [
    ShopBody(), //0
    HomeBody(), //1
    SettingsBody(), //2
  ];

  void routePage(int pageIndex) {
    if (selectedBarState.stateToPageIndex() != pageIndex) {
      selectedBarState = selectedBarState.indexToState(pageIndex);

      notifyListeners();
    }
  }
}
