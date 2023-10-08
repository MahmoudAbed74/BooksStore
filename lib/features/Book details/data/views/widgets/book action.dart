import 'package:booklystore_app/core/widgets/custome%20Button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        children: [
          Expanded(
              child: CustomeButton(
            backgroundColor: Colors.white,
            fontsize: 18,
            text: "900\$",
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16), topLeft: Radius.circular(16)),
          )),
          Expanded(
            child: CustomeButton(
              backgroundColor: Color(0XFFEF8262),
              fontsize: 18,
              text: "free preview",
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}
