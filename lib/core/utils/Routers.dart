import 'package:booklystore_app/features/search%20view/presentation/Seach%20View%20Page.dart';
import 'package:booklystore_app/features/spalsh/presentation/view/splash.dart';
import 'package:go_router/go_router.dart';
import '../../features/Book details/data/views/Book detils view.dart';
import '../../features/Home/data/views/home view.dart';

abstract class Routers {
  static const kHomeView = '/HomeView';
  static const kBookDetialsBody = "/BookDetialsBody";
  static const kSearchpage = "/searchPage";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashViewPage(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetialsBody,
        builder: (context, state) => const BookDetilsViewBody(),
      ),
      GoRoute(
        path: kSearchpage,
        builder: (context, state) => const SearchViewPage(),
      )
    ],
  );
}
