import 'package:book_app/Features/home/data/model/Book_model.dart';
import 'package:book_app/Features/home/presentation/view/widgets/widgetsBookDetils/bookDetils.dart';
import 'package:book_app/Features/home/presentation/view_model/CubitSimulir/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/book_model/book_model.dart';

class BookBody extends StatefulWidget {
  const BookBody({super.key, required this.books});
  final  ModelBook books;

  @override
  State<BookBody> createState() => _BookDetilesBodyState();
}

class _BookDetilesBodyState extends State<BookBody> {
  @override
  void initState() {
   BlocProvider.of<SimilarBooksCubit>(context).getSimilarBooks(category:widget.books.volumeInfo.categories![0]);
  }
  @override
  Widget build(BuildContext context) {

    return  SafeArea(
      child: Scaffold(
        body: BookDetilsBody(book:widget.books ,),
      ),
    );
  }
}
