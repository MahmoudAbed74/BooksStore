import 'package:booklystore_app/core/utils/Texts%20Styles.dart';
import 'package:flutter/material.dart';

class Custome_ErrorFailure extends StatelessWidget {
  const Custome_ErrorFailure({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      style: Text_Fonts_Styles.textStyle18,
    );
  }
}
