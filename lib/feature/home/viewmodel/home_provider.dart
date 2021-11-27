import 'package:bixos_project/core/constant/asset_path.dart';
import 'package:bixos_project/feature/home/domain/entity/water_carboy.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  //!Lists

  List<WaterCarboy> waterCarboys = [
    WaterCarboy(title: 'Hayat', imagePath: AssetsPath().homeSVG, price: 19.90),
    WaterCarboy(title: 'Pınar', imagePath: AssetsPath().homeSVG, price: 20.90),
    WaterCarboy(title: 'Damla', imagePath: AssetsPath().homeSVG, price: 21.90),
    WaterCarboy(title: 'Saka', imagePath: AssetsPath().homeSVG, price: 22.90),
    WaterCarboy(title: 'Sırma', imagePath: AssetsPath().homeSVG, price: 23.90),
    WaterCarboy(title: 'Hamidiye', imagePath: AssetsPath().homeSVG, price: 24.90),
    WaterCarboy(title: 'Danone', imagePath: AssetsPath().homeSVG, price: 25.90),
  ];

  //!Variables
  bool _visible = false;
  double _totalPrice = 0;
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
      loopWaterCarboyResultTotalPrice();
    }

    notifyListeners();
  }

  /// waterNumber'ı 1 azaltma işlemi
  void minusOneWaterNumber({required int index}) {
    waterCarboys[index].waterNumber = waterCarboys[index].waterNumber - 1;
    loopWaterCarboyResultTotalPrice();
    notifyListeners();
  }

  ///Toplam Tutar'ın verisini aldığımız method
  void loopWaterCarboyResultTotalPrice() {
    double _totalPriceCopy = 0;
    for (var carboy in waterCarboys) {
      _totalPriceCopy = _totalPriceCopy + carboy.waterNumber * carboy.price;
    }
    _totalPrice = _totalPriceCopy;
  }

  ///Listeleri default haline(waterNumber'ın sıfırlanması) işlemi
  void loopWaterCarboyDefault() {
    for (var carboy in waterCarboys) {
      carboy.waterNumber = 0;
    }
    _totalPrice = 0;
    notifyListeners();
  }

  //! Get Set Methods
  bool get visible => _visible;
  set visible(bool visible) {
    _visible = visible;
    notifyListeners();
  }

  double get totalPrice => _totalPrice;
  set totalPrice(double value) {
    _totalPrice = value;
    notifyListeners();
  }
}
