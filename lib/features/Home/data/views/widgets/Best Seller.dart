import 'package:booklystore_app/core/utils/Texts%20Styles.dart';
import 'package:booklystore_app/features/Home/data/views/widgets/Image%20Best%20seller.dart';
import 'package:flutter/material.dart';

import 'Rate Best Seller .dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [ImageBestSeller(), BestsellerDetils()],
    );
  }
}

class BestsellerDetils extends StatelessWidget {
  const BestsellerDetils({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleItemBestSeller(),
          titleItemAuthorBestSeller(),
          RateBestSeller(),
        ],
      ),
    );
  }
}

class PriceBestSeller extends StatelessWidget {
  const PriceBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10, top: 5, bottom: 10),
      child: SizedBox(
        child: Text(
          "19.9\$",
          style: Text_Fonts_Styles.textStyle14,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

class titleItemAuthorBestSeller extends StatelessWidget {
  const titleItemAuthorBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 5, bottom: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .5,
        child: const Text(
          "J.K. Rowling",
          style: Text_Fonts_Styles.textStyle14,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

class titleItemBestSeller extends StatelessWidget {
  const titleItemBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .5,
        child: const Text(
          "Harry Potter and the Goblet of Fire",
          style: Text_Fonts_Styles.textStyle18,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
