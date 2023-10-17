import 'package:booklystore_app/features/Home/data/views/widgets/Custome%20List%20View%20Item.dart';
import 'package:flutter/material.dart';

class BookDetailsPart2 extends StatelessWidget {
  const BookDetailsPart2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("you can also like"),
          SizedBox(
            height: 10,
          ),
          SimilarListviewInBookDetails(),
        ],
      ),
    );
  }
}

class SimilarListviewInBookDetails extends StatelessWidget {
  const SimilarListviewInBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .125,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            //! image Url
            return const ListviewCustome_Item(
              imageUrl:
                  "https://gamepreorders.com/wp-content/uploads/2020/04/cover-art-2.jpg",
            );
          },
        ),
      ),
    );
  }
}
