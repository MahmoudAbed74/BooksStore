import 'package:booklystore_app/core/utils/Routers.dart';
import 'package:booklystore_app/core/utils/Texts%20Styles.dart';
import 'package:booklystore_app/core/widgets/Custome%20Error%20Failure.dart';
import 'package:booklystore_app/core/widgets/Custome%20Loading.dart';
import 'package:booklystore_app/features/Home/Presentation/manger/cubit/search_view_page_cubit.dart';
import 'package:booklystore_app/features/Home/data/views/widgets/Best%20Seller.dart';
import 'package:booklystore_app/features/search%20view/presentation/view/Widgets/TextFormfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextformfieldSearch(),
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
  const ListViewBuilderBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //* add extra : to add BookModel
        GoRouter.of(context).push(
          Routers.kBookDetialsBody,
        );
      },
      child: BlocBuilder<SearchViewPageCubit, SearchViewPageState>(
        builder: (context, state) {
          if (state is SearchViewPageSuccess) {
            return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.book.length,
              itemBuilder: (context, index) {
                //! return const BestSellerItem();
                return BestSellerItem(
                  bookModel: state.book[index],
                );
              },
            );
          } else if (state is SearchViewPageFaliure) {
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
