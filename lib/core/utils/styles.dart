import 'package:book_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {


  static const titleStyle30 = TextStyle(

    fontSize: 30,
    fontWeight: FontWeight.w600,
      // fontFamily: kGtSwctrafine
  );

  static const titleStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: kGtSwctrafine
  );

  static const titleStyle20N = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      fontFamily: kGtSwctrafine
  );

  static const titleStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const titleStyle18N = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );
  static const titleStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Color(0xff707070),
  );
  static const titleStyle14N = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const titleStyle16 = TextStyle(
    fontSize: 14,
    color: Color(0xff707070),

  );
}

