import 'package:flutter/material.dart';

import 'clors.dart';

class MyThemeData {

  static final ThemeData lightTheme = ThemeData(
    primaryColor: PrimaryColor,
    scaffoldBackgroundColor: mainBackgroundColor,
    colorScheme: ColorScheme(
      primary: PrimaryColor,
      onPrimary: Colors.white,
      secondary: GreenColor,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      onSurface: Colors.grey,
      surface: Colors.white,
      onBackground: Colors.white,
      brightness: Brightness.light,
      background: mainBackgroundColor,

    ),
    textTheme: TextTheme(
      headline3: TextStyle(
          fontSize: 22, color: WhiteColor, fontWeight: FontWeight.w700),
        headline2: TextStyle(
            fontSize: 18, color: WhiteColor, fontWeight: FontWeight.w700),
        headline1: TextStyle(
            fontSize: 16, color: WhiteColor, fontWeight: FontWeight.w400)),
    appBarTheme: AppBarTheme(
      backgroundColor:PrimaryColor ,
      elevation: 0,
      iconTheme: IconThemeData(color: WhiteColor),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: PrimaryColor
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.transparent
    ),
    canvasColor: WhiteColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: PrimaryColor, unselectedItemColor: GreyColor),
  );


  static final ThemeData darkTheme = ThemeData(
    primaryColor: SecendColor,
    scaffoldBackgroundColor: mainBackgroundColor,
    colorScheme: ColorScheme(
      primary: SecendColor,
      onPrimary: Colors.white,
      secondary: GreenColor,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      onSurface: Colors.grey,
      surface: Colors.white,
      onBackground: Colors.white,
      brightness: Brightness.light,
      background: mainBackgroundColorDark,
    ),
    textTheme: TextTheme(
        headline3: TextStyle(
            fontSize: 22, color: WhiteColor, fontWeight: FontWeight.w700),
        headline2: TextStyle(
            fontSize: 18, color: WhiteColor, fontWeight: FontWeight.w700),
        headline1: TextStyle(
            fontSize: 16, color: WhiteColor, fontWeight: FontWeight.w400)),
    appBarTheme: AppBarTheme(
      backgroundColor:SecendColor ,
      elevation: 0,
      iconTheme: IconThemeData(color: WhiteColor),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: PrimaryColor
    ),
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.transparent
    ),

    canvasColor: SecendColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(

        selectedItemColor: PrimaryColor, unselectedItemColor: GreyColor),
  );

}