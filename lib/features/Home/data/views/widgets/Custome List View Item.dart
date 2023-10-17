import 'package:flutter/material.dart';

class ListviewCustome_Item extends StatelessWidget {
  const ListviewCustome_Item({Key? key, required this.imageUrl})
      : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.fill)),
      ),
    );
  }
}
