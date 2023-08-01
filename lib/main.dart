import 'package:book_app/Features/presentation/view/SplashView.dart';
import 'package:book_app/shard/styles/My_Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: MyThemeData.lightTheme,
      // darkTheme: MyThemeData.darkTheme,
      home: SplahView(),
    );
}}
