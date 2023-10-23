import 'package:booklystore_app/core/utils/Texts%20Styles.dart';
import 'package:booklystore_app/features/Home/data/models/book_model/book_model.dart';
import 'package:booklystore_app/features/Home/data/views/widgets/Custome%20List%20View%20Item.dart';
import 'package:booklystore_app/features/Home/data/views/widgets/Rating.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SizedBox(
            height: 114,
            child: ListviewCustome_Item(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleItemBestSeller(titleText: bookModel.volumeInfo.title!),
              titleItemAuthorBestSeller(
                  titleAuthor: bookModel.volumeInfo.authors![0]),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  children: [
                    const PriceBestSeller(bookPrice: "free"),
                    const Spacer(),
                    Rating(rating: bookModel.volumeInfo.ratingsCount ?? 0),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class PriceBestSeller extends StatelessWidget {
  const PriceBestSeller({
    super.key,
    required this.bookPrice,
  });
  final String bookPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 5, bottom: 10),
      child: SizedBox(
        child: Text(
          bookPrice,
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
    required this.titleAuthor,
  });
  final String titleAuthor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 5, bottom: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .5,
        child: Text(
          titleAuthor,
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
    required this.titleText,
  });
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .5,
        child: Text(
          titleText,
          style: Text_Fonts_Styles.textStyle18,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
