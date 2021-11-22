// ignore_for_file: prefer_final_fields, unused_field

class AssetsPath {
  static AssetsPath _instance = AssetsPath._init();
  AssetsPath._init();
  factory AssetsPath() {
    return _instance;
  }

  //!SVG
  final String homeSVG = "assets/images/home.svg";
  final String logoSVG = "assets/images/logo.svg";
  final String menuSVG = "assets/images/menu.svg";
  final String shopSVG = "assets/images/shop.svg";
  final String settingsSVG = "assets/images/settings.svg";

  //!PNG
  final String backgroundPNG = "assets/images/background.png";
}
