// ignore_for_file: prefer_const_constructors

import 'package:bixos_project/core/constant/route.dart';
import 'package:bixos_project/feature/bottom_navigation_bar/view/pages/bottom_navigation_bar_page.dart';
import 'package:flutter/cupertino.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case BottomNavigationBarPageRoute:
      return CupertinoPageRoute(builder: (_) => BottomNavigationBarPage());
    default:
      return CupertinoPageRoute(builder: (_) => BottomNavigationBarPage());
  }
}
