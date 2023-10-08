import 'package:booklystore_app/features/Home/data/views/widgets/Rating.dart';
import 'package:flutter/material.dart';

import 'Best Seller.dart';

class RateBestSeller extends StatelessWidget {
  const RateBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: const Row(
        children: [
          PriceBestSeller(),
          Spacer(),
          Rating(),
        ],
      ),
    );
  }
}
