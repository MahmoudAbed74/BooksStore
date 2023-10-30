import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:booklystore_app/core/utils/Routers.dart';
import 'package:booklystore_app/core/utils/Texts%20Styles.dart';
import 'package:booklystore_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class splashView extends StatelessWidget {
  const splashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(AssetData.LogoImage),
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: AnimatedTextKit(animatedTexts: [
              WavyAnimatedText("Free Books",
                  textStyle: Text_Fonts_Styles.textStyle30
                      .copyWith(fontWeight: FontWeight.w900),
                  textAlign: TextAlign.center),
            ]),
          )
        ],
      ),
    );
  }
}

class SplashViewPage extends StatefulWidget {
  const SplashViewPage({super.key});

  @override
  State<SplashViewPage> createState() => _SplashViewPageState();
}

class _SplashViewPageState extends State<SplashViewPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(Routers.kHomeView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: splashView(),
    );
  }
}
