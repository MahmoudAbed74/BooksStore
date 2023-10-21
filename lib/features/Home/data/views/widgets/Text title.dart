import 'package:booklystore_app/core/utils/Texts%20Styles.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Text(
        "Newset Books",
        style: Text_Fonts_Styles.textStyle30,
      ),
    );
  }
}
