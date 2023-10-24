import 'package:flutter/material.dart';

class TextformfieldSearch extends StatelessWidget {
  TextformfieldSearch({super.key, this.searchReslut});
  String? searchReslut;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (newValue) {
        searchReslut = newValue;
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
