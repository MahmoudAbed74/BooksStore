import 'package:booklystore_app/core/utils/launch%20Url.dart';
import 'package:booklystore_app/core/widgets/custome%20Button.dart';
import 'package:booklystore_app/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        children: [
          Expanded(
              child: CustomeButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            fontsize: 18,
            text: "Free",
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16), topLeft: Radius.circular(16)),
          )),
          Expanded(
            child: CustomeButton(
              onPressed: () {
                launchURLCoustome(context,
                    url: bookModel.volumeInfo.previewLink!);
              },
              backgroundColor: const Color(0XFFEF8262),
              fontsize: 18,
              text: gettext(bookModel),
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }

  String gettext(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return "Not avilable";
    } else {
      return "Preview";
    }
  }
}
