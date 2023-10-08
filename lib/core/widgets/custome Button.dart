import 'package:booklystore_app/core/utils/Texts%20Styles.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.fontsize,
      required this.textColor,
      this.borderRadius});
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(15))),
      child: Text(text,
          style: Text_Fonts_Styles.textStyle18.copyWith(
            color: textColor,
            fontSize: fontsize,
          )),
    );
  }
}
