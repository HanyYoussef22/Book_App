import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import 'Similerlistview.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaHidth = MediaQuery.of(context).size.height;
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'You can also like',
          style: Styles.titleStyle14N,
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: mediaHidth * 0.009,
        ),
        SizedBox(height: mediaHidth * 0.18, child:  SimilarBooksListView())
      ],
    );
  }
}