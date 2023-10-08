import 'package:flutter/material.dart';

class TextformfieldSearch extends StatelessWidget {
  const TextformfieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
