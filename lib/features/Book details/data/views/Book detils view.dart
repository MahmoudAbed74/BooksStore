import 'package:booklystore_app/Constant.dart';
import 'package:booklystore_app/features/Book%20details/data/views/widgets/book%20%20details%20listView.dart';
import 'package:booklystore_app/features/Book%20details/data/views/widgets/book%20deatails%20data.dart';

import 'package:flutter/material.dart';

class BookDetilsViewBody extends StatelessWidget {
  const BookDetilsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: KPrimary,
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.exit_to_app)),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_outlined)),
            ]),
        body: const Column(
          children: [
            // CustomScrollView(
            //       slivers: [
            //         SliverToBoxAdapter(
            //           child: BookDetailsPart1(),
            //         ),
            //         SliverFillRemaining(
            //           child: BookDetailsPart2(),
            //         )
            //       ],
            //     ),
            BookDetailsPart1(),
            BookDetailsPart2()
          ],
        ),
      ),
    );
  }
}
