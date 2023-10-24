import 'package:flutter/material.dart';

class SnackBarCustom extends StatelessWidget {
  const SnackBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
        child: SnackBar(
      content: Text("Cannt connect to $Uri"),
      action: SnackBarAction(
        label: "Undo",
        onPressed: () {},
      ),
    )); // and use it to show a SnackBar.
  }
}
