import 'package:book_app/Features/home/presentation/view/widgets/widgetsBookDetils/bookDetils.dart';
import 'package:flutter/material.dart';

class BookDetilesBody extends StatelessWidget {
  const BookDetilesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BookDetilsBody(),
      ),
    );
  }
}
