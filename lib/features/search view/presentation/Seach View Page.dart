import 'package:booklystore_app/features/Home/Presentation/manger/cubit/search_view_page_cubit.dart';
import 'package:booklystore_app/features/search%20view/presentation/view/Widgets/SearchViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewPage extends StatefulWidget {
  const SearchViewPage({
    super.key,
  });

  @override
  State<SearchViewPage> createState() => _SearchViewPageState();
}

class _SearchViewPageState extends State<SearchViewPage> {
  @override
  void initState() {
    BlocProvider.of<SearchViewPageCubit>(context)
        .fetchSearchViewPage(searchWord: "data");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
