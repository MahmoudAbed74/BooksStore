import 'package:booklystore_app/Constant.dart';
import 'package:booklystore_app/core/utils/Routers.dart';
import 'package:booklystore_app/features/Book%20details/data/views/widgets/book%20%20details%20listView.dart';
import 'package:booklystore_app/features/Book%20details/data/views/widgets/book%20deatails%20data.dart';
import 'package:booklystore_app/features/Home/Presentation/manger/Similar_books_Cubit/similar_books_cubit.dart';
import 'package:booklystore_app/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookDetilsViewBody extends StatefulWidget {
  const BookDetilsViewBody({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  State<BookDetilsViewBody> createState() => _BookDetilsViewBodyState();
}

class _BookDetilsViewBodyState extends State<BookDetilsViewBody> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilardBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Scaffold(
            appBar: AppBar(
                backgroundColor: KPrimary,
                leading: IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: const Icon(Icons.exit_to_app)),
                actions: [
                  IconButton(
                      onPressed: () {
                        GoRouter.of(context).push(Routers.kSearchpage);
                      },
                      icon: const Icon(Icons.shopping_cart_outlined)),
                ]),
            body: Column(
              children: [
                BookDetailsPart1(book: widget.bookModel),
                Expanded(
                  flex: 2,
                  child: BookDetailsPart2(
                    bookModel: widget.bookModel,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
