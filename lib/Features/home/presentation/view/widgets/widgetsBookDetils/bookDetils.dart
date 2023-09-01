import 'package:book_app/Features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'bookDetilsSection.dart';
import 'bookSectionSimmilerListView.dart';
import 'customAppBar.dart';

class BookDetilsBody extends StatelessWidget {
   BookDetilsBody({super.key,required this.book});
ModelBook book;
  @override
  Widget build(BuildContext context) {
    var mediaHidth = MediaQuery.of(context).size.height;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:
            EdgeInsets.only(left: mediaHidth * 0.044, right: mediaHidth * 0.044),
            child: Column(

              children: [
                const CustomAppBar(),
                 BookDetilsSection(books: book,),

                Expanded(
                  child: SizedBox(
                    height: mediaHidth * 0.03,
                  ),
                ),
                 SimilarBookSection()
                ],
            ),
          ) ,
        )
      ],
    );
  }
}
















