import 'package:booklystore_app/core/utils/Texts%20Styles.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          Icons.star_border_sharp,
          color: Colors.amberAccent,
          fill: BorderSide.strokeAlignCenter,
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.3, right: 5),
          child: Text(
            "4.8",
            style: Text_Fonts_Styles.textStyle14,
          ),
        ),
        Opacity(
            opacity: .7,
            child: Text("(2243)", style: Text_Fonts_Styles.textStyle14))
      ],
    );
  }
}
