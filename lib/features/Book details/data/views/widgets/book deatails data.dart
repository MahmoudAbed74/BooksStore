import 'package:booklystore_app/core/utils/Texts%20Styles.dart';
import 'package:booklystore_app/features/Book%20details/data/views/widgets/book%20action.dart';
import 'package:booklystore_app/features/Home/data/views/widgets/Custome%20List%20View%20Item.dart';
import 'package:booklystore_app/features/Home/data/views/widgets/Rating.dart';
import 'package:flutter/material.dart';

class BookDetailsPart1 extends StatelessWidget {
  const BookDetailsPart1({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .28),
          //! image Url
          child: const ListviewCustome_Item(
              imageUrl:
                  "https://gamepreorders.com/wp-content/uploads/2020/04/cover-art-2.jpg"),
        ),
        const SizedBox(
          height: 35,
        ),
        const Text(
          "The Jungle Book",
          style: Text_Fonts_Styles.textStyle30,
        ),
        const SizedBox(
          height: 8,
        ),
        const Opacity(
            opacity: .7,
            child: Text(
              "Rudyard Kipling",
              style: Text_Fonts_Styles.textStyle18,
            )),
        const SizedBox(
          height: 17,
        ),
        const Rating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 22,
        ),
        const BooksAction(),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
