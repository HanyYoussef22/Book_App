import 'package:flutter/material.dart';

import '../../../../../shard/styles/clors.dart';

class CategoryModel{
  String id;
  String titel;
  String image;
  Color ColorCode;
  CategoryModel(this.id,this.titel,this.ColorCode,this.image);

  static List<CategoryModel>getCategoryes(){
    return [
      //   general
      CategoryModel('Computer science', 'Computer science', SecendColor, 'assetes/images/Programming.png'),
      CategoryModel('Medical', 'Medical ', SecendColor, 'assetes/images/medical.jpg'),
      CategoryModel('earth', 'environment', SecendColor, 'assetes/images/environment.png'),
      CategoryModel('science', 'Science', SecendColor, 'assetes/images/science.png'),
    ];
  }

}