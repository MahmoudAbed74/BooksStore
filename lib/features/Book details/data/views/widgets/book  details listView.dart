import 'package:booklystore_app/core/utils/Routers.dart';
import 'package:booklystore_app/core/widgets/Custome%20Error%20Failure.dart';
import 'package:booklystore_app/core/widgets/Custome%20Loading.dart';
import 'package:booklystore_app/features/Home/Presentation/manger/Similar_books_Cubit/similar_books_cubit.dart';
import 'package:booklystore_app/features/Home/data/models/book_model/book_model.dart';
import 'package:booklystore_app/features/Home/data/views/widgets/Custome%20List%20View%20Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookDetailsPart2 extends StatelessWidget {
  const BookDetailsPart2({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("you can also like"),
          const SizedBox(
            height: 10,
          ),
          SimilarListviewInBookDetails(bookModel: bookModel),
        ],
      ),
    );
  }
}

class SimilarListviewInBookDetails extends StatelessWidget {
  const SimilarListviewInBookDetails({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSuccess) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * .125,
              child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  //! image Url
                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(Routers.kBookDetialsBody,
                          extra: state.books[index]);
                    },
                    child: ListviewCustome_Item(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              "",
                    ),
                  );
                },
              ),
            );
          } else if (state is SimilarBooksFaliure) {
            return Custome_ErrorFailure(errorMessage: state.errMessage);
          } else {
            return const Center(
              child: CustomeLoading(),
            );
          }
        },
      ),
    );
  }
}
