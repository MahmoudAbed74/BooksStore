import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListviewCustome_Item extends StatelessWidget {
  const ListviewCustome_Item({Key? key, required this.imageUrl})
      : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
