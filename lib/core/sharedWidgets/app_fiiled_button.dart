import 'package:bixos_project/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

class AppFiiledButton extends StatelessWidget {
  const AppFiiledButton({
    Key? key,
    required this.buttonColor,
    required this.buttonText,
    required this.buttonTextStyle,
    this.height,
    this.width,
    this.onTap,
  }) : super(key: key);

  final Color buttonColor;
  final String buttonText;
  final TextStyle buttonTextStyle;
  final double? height;
  final double? width;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        height: height ?? ScreenSize().dynamicHeight(.07),
        width: width ?? ScreenSize().dynamicWidth(.8),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
