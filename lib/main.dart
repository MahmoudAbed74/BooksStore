import 'package:booklystore_app/Constant.dart';
import 'package:booklystore_app/core/utils/Routers.dart';
import 'package:booklystore_app/core/utils/get_it_Service%20Locator.dart';
import 'package:booklystore_app/features/Home/Presentation/manger/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:booklystore_app/features/Home/Presentation/manger/newset%20books%20cubit/newset_books_cubit.dart';
import 'package:booklystore_app/features/Home/data/repos/home_repoImp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLoctaor();
  runApp(const Booklyapp());
}

class Booklyapp extends StatelessWidget {
  const Booklyapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt<Home_repoImp>()..fetechNewsetBooks(),
          ),
        ),
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt<Home_repoImp>(),
          )..fetchFeaturedBooks(),
        ),
      ],
      child: MaterialApp.router(
          routerConfig: Routers.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: KPrimary,
            textTheme: GoogleFonts.montserratAlternatesTextTheme(
                ThemeData.dark().textTheme),
          )),
    );
  }
}
