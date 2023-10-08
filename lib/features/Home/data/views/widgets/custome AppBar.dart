import 'package:booklystore_app/core/utils/Routers.dart';
import 'package:booklystore_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            AssetData.LogoImage,
            height: 28,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(Routers.kSearchpage);
              },
              icon: const Icon(
                Icons.search_sharp,
                size: 40,
              ))
        ],
      ),
    );
  }
}
