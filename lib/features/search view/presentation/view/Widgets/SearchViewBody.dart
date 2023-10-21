import 'package:booklystore_app/core/utils/Routers.dart';
import 'package:booklystore_app/core/utils/Texts%20Styles.dart';
import 'package:booklystore_app/features/Home/data/views/widgets/Best%20Seller.dart';
import 'package:booklystore_app/features/search%20view/presentation/view/Widgets/TextFormfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TextformfieldSearch(),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Search results",
            textAlign: TextAlign.start,
            style: Text_Fonts_Styles.textStyle16.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Expanded(child: ListViewBuilderBooks()),
        ],
      ),
    );
  }
}

class ListViewBuilderBooks extends StatelessWidget {
  const ListViewBuilderBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Routers.kBookDetialsBody);
      },
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          //! return const BestSellerItem();
          return Text("0");
        },
      ),
    );
  }
}
