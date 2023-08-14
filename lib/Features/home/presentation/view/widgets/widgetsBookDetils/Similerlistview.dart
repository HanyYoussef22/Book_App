
import 'package:flutter/material.dart';

import '../widgetsHomeView/customListView.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {var MediaHight=MediaQuery.of(context).size.height;
  return SizedBox(
    height: MediaHight*0.3,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return const CustomListViewItem();
        }),
  );
  }
}