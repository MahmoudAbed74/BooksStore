import 'package:booklystore_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ImageBestSeller extends StatelessWidget {
  const ImageBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SizedBox(
        height: 114,
        child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(AssetData.TestImage), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ),
    );
  }
}
