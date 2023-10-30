import 'package:booklystore_app/core/utils/Routers.dart';
import 'package:booklystore_app/core/widgets/Custome%20Error%20Failure.dart';
import 'package:booklystore_app/core/widgets/Custome%20Loading.dart';
import 'package:booklystore_app/features/Home/Presentation/manger/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'Custome List View Item.dart';

class FuturedListviewBuilder extends StatelessWidget {
  const FuturedListviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: ListView.builder(
                itemCount: state.books.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(Routers.kBookDetialsBody,
                          extra: state.books[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ListviewCustome_Item(
                          imageUrl: state.books[index].volumeInfo.imageLinks
                                  ?.thumbnail ??
                              ''),
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is FeaturedBooksFaliare) {
          return Custome_ErrorFailure(errorMessage: state.errMessage);
          // Custome_ErrorFailure(errorMessage: state.errMess);
        } else {
          return const Center(child: CustomeLoading());
        }
      },
    );
  }
}
