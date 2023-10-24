import 'package:booklystore_app/features/Home/Presentation/manger/cubit/search_view_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextformfieldSearch extends StatelessWidget {
  const TextformfieldSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String searchReslut;
    return TextFormField(
      onSaved: (newValue) {
        if (newValue != null) {
          searchReslut = newValue;
          BlocProvider.of<SearchViewPageCubit>(context)
              .fetchSearchViewPage(searchWord: searchReslut);
        } else {}
      },
      onFieldSubmitted: (value) {
        searchReslut = value;
        BlocProvider.of<SearchViewPageCubit>(context)
            .fetchSearchViewPage(searchWord: searchReslut);
      },
      decoration: InputDecoration(
          enabledBorder: Buildoutlineinputborder(),
          focusedBorder: Buildoutlineinputborder(),
          hintText: "search for books",
          prefixIcon: const Icon(Icons.search)),
    );
  }
}

OutlineInputBorder Buildoutlineinputborder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.white));
}
