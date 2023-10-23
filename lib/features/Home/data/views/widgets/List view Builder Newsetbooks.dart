import 'package:booklystore_app/core/utils/Routers.dart';
import 'package:booklystore_app/core/widgets/Custome%20Error%20Failure.dart';
import 'package:booklystore_app/core/widgets/Custome%20Loading.dart';
import 'package:booklystore_app/features/Home/Presentation/manger/newset%20books%20cubit/newset_books_cubit.dart';
import 'package:booklystore_app/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'Best Seller.dart';

class ListViewBuilderNewsetbooks extends StatelessWidget {
  const ListViewBuilderNewsetbooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
        builder: (context, state) {
      if (state is NewsetBooksSuccess) {
        return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            return BestSellerItem(
              bookModel: state.books[index],
            );
          },
        );
      } else if (state is NewsetBooksFaliure) {
        return Custome_ErrorFailure(errorMessage: state.errorMessage);
      } else {
        return const Center(child: CustomeLoading());
      }
    });
  }
}
