import 'package:booklystore_app/core/utils/get_it_Service%20Locator.dart';
import 'package:booklystore_app/features/Home/Presentation/manger/Similar_books_Cubit/similar_books_cubit.dart';
import 'package:booklystore_app/features/Home/Presentation/manger/cubit/search_view_page_cubit.dart';
import 'package:booklystore_app/features/Home/data/models/book_model/book_model.dart';
import 'package:booklystore_app/features/Home/data/repos/home_repoImp.dart';
import 'package:booklystore_app/features/search%20view/presentation/Seach%20View%20Page.dart';
import 'package:booklystore_app/features/spalsh/presentation/view/splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt<Home_repoImp>()),
          //عشان استدعي معاها الBookModel
          child: BookDetilsViewBody(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchpage,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchViewPageCubit(getIt<Home_repoImp>()),
          child: const SearchViewPage(),
        ),
      )
    ],
  );
}
