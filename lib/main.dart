
import 'package:book_app/shard/styles/clors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Features/Splash/presentation/view/SplashView.dart';
import 'core/utils/appRouter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: mainBackgroundColor,
          textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme) ),

      // darkTheme: MyThemeData.darkTheme,
      // home: SplahView(),
    );
}}
