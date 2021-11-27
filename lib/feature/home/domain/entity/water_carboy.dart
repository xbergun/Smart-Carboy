class WaterCarboy {
  final String title;
  final double price;
  final String imagePath;
  int waterNumber;

  WaterCarboy({
    required this.title,
    required this.price,
    required this.imagePath,
    this.waterNumber = 0,
  });
}
