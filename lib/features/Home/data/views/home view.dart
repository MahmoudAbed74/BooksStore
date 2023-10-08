import 'package:booklystore_app/Constant.dart';
import 'package:flutter/material.dart';
import 'widgets/List view Builder books.dart';
import 'widgets/Text title.dart';
import 'widgets/custome AppBar.dart';
import 'widgets/featured List view Bulider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: KPrimary,
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomeAppBar(),
                    FuturedListviewBuilder(),
                    TitleText(),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ListViewBuilderBooks(),
              ),
            )
          ],
        ));
  }
}
