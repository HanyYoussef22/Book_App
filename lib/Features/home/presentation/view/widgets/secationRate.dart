import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/model/book_model/book_model.dart';

class RateWidgets extends StatelessWidget {
  ModelBook rate;
  RateWidgets( {super.key,required this.rate});

  @override
  Widget build(BuildContext context) {
    return   Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,size: 17,),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '${rate.volumeInfo.averageRating??'4.6'}',
          style: Styles.titleStyle20,
        ),
        SizedBox(
          width: 6.3,
        ),
        Opacity(
          opacity: 0.6,
          child: Text(
            '${rate.volumeInfo.ratingsCount?? "(2390)"}' ,
            style: Styles.titleStyle14,
          ),
        ),

      ],
    );
  }
}