import 'package:booklystore_app/core/utils/Texts%20Styles.dart';
import 'package:booklystore_app/features/Book%20details/data/views/widgets/book%20action.dart';
import 'package:booklystore_app/features/Home/data/models/book_model/book_model.dart';
import 'package:booklystore_app/features/Home/data/views/widgets/Custome%20List%20View%20Item.dart';
import 'package:booklystore_app/features/Home/data/views/widgets/Rating.dart';
import 'package:flutter/material.dart';

class BookDetailsPart1 extends StatelessWidget {
  const BookDetailsPart1({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .28),
          //! image Url
          child: ListviewCustome_Item(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ''),
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Text(
            book.volumeInfo.title!,
            style: Text_Fonts_Styles.textStyle18.copyWith(fontSize: 23),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Opacity(
            opacity: .7,
            child: Text(
              book.volumeInfo.authors![0],
              style: Text_Fonts_Styles.textStyle18,
            )),
        const SizedBox(
          height: 5,
        ),
        Rating(
          rating: book.volumeInfo.averageRating ?? 0,
          views: book.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 10,
        ),
        BooksAction(bookModel: book),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
