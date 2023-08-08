import 'package:book_app/shard/styles/My_Themes.dart';
import 'package:book_app/shard/styles/clors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/Splash/presentation/view/SplashView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: mainBackgroundColor),
      // darkTheme: MyThemeData.darkTheme,
      home: SplahView(),
    );
}}
