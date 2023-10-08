import 'package:booklystore_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ListviewCustome_Item extends StatelessWidget {
  const ListviewCustome_Item({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
                image: AssetImage(AssetData.TestImage), fit: BoxFit.fill)),
      ),
    );
  }
}
