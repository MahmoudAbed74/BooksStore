import 'package:flutter/material.dart';

import 'Custome List View Item.dart';

class FuturedListviewBuilder extends StatelessWidget {
  const FuturedListviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const ListviewCustome_Item();
          },
        ),
      ),
    );
  }
}
