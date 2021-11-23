import 'package:bixos_project/core/constant/asset_path.dart';
import 'package:bixos_project/feature/home/domain/entity/water_carboy.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  //!Lists

  List<WaterCarboy> waterCarboys = [
    WaterCarboy(title: 'Hayat', imagePath: AssetsPath().homeSVG),
    WaterCarboy(title: 'Pınar', imagePath: AssetsPath().homeSVG),
    WaterCarboy(title: 'Damla', imagePath: AssetsPath().homeSVG),
    WaterCarboy(title: 'Saka', imagePath: AssetsPath().homeSVG),
    WaterCarboy(title: 'Sırma', imagePath: AssetsPath().homeSVG),
    WaterCarboy(title: 'Hamidiye', imagePath: AssetsPath().homeSVG),
    WaterCarboy(title: 'Danone', imagePath: AssetsPath().homeSVG),
  ];

  //!Variables
  bool _visible = false;

  //!Methods

  /// Stack'te gizli olan container'ı ortaya çıkarmak için yazılan method.
  void visibleOn({required int index}) {
    waterCarboys[index].waterNumber = 1;
    notifyListeners();
  }

  /// waterNumber'ı 1 arttırma işlemi
  void appendOneWaterNumber({required int index}) {
    if (waterCarboys[index].waterNumber < 3) {
      waterCarboys[index].waterNumber = waterCarboys[index].waterNumber + 1;
    }
    notifyListeners();
  }

  /// waterNumber'ı 1 azaltma işlemi
  void minusOneWaterNumber({required int index}) {
    waterCarboys[index].waterNumber = waterCarboys[index].waterNumber - 1;
    notifyListeners();
  }

  //! Get Set Methods
  bool get visible => _visible;
  set visible(bool visible) {
    _visible = visible;
    notifyListeners();
  }
}
