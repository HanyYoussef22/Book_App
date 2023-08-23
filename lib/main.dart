import 'package:book_app/Features/home/data/Repo/home_repo.dart';
import 'package:book_app/Features/home/data/Repo/home_repo_imp.dart';
import 'package:book_app/Features/home/presentation/view_model/CubitFeaturedBooks/featured_books_cubit.dart';
import 'package:book_app/core/locator_service.dart';
import 'package:book_app/shard/styles/clors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Features/Splash/presentation/view/SplashView.dart';
import 'Features/home/presentation/view_model/CubitNewsBooks/news_book_cubit.dart';
import 'core/utils/api_service.dart';
import 'core/utils/appRouter.dart';

void main() {
  SetupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeaturedBooksCubit(getIt.get<HomeRepoImplement>())..getFeatureBooks()
        ),
        BlocProvider(
            create: (context) =>
                NewsBookCubit(getIt.get<HomeRepoImplement>()))
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: mainBackgroundColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),

        // darkTheme: MyThemeData.darkTheme,
        // home: SplahView(),
      ),
    );
  }
}
