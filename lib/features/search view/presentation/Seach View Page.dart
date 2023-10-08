import 'package:booklystore_app/features/search%20view/presentation/view/Widgets/SearchViewBody.dart';
import 'package:flutter/material.dart';

class SearchViewPage extends StatelessWidget {
  const SearchViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
