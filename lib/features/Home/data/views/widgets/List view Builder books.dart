import 'package:booklystore_app/core/utils/Routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'Best Seller.dart';

class ListViewBuilderBooks extends StatelessWidget {
  const ListViewBuilderBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Routers.kBookDetialsBody);
      },
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BestSellerItem();
        },
      ),
    );
  }
}
