import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class ItemBustSeller extends StatelessWidget {
  const ItemBustSeller({super.key});

  @override
  Widget build(BuildContext context) {
    var MediaHight=MediaQuery.of(context).size.height;
    var MediaWedith=MediaQuery.of(context).size.width;
    return  SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5/4,
            child: Container(
              height: MediaHight*0.18,
              width: MediaWedith*0.12,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.amberAccent,
                  image: const DecorationImage(
                    image: AssetImage(AssetsData.test2),
                    fit: BoxFit.fill,
                  )
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaWedith*.5,
                  child: Text(
                    "Harry Potter and the Goblet of Fire",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.titleStyle20.copyWith(
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "J.k.Rowling",
                  style: Styles.titleStyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "19.99 €",
                      style: Styles.titleStyle20,
                    ),
                   SizedBox(
                     width: MediaQuery.of(context).size.width*0.18,
                   ),
                    RateWidgets()

                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
class RateWidgets extends StatelessWidget {
  const RateWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,size: 16,),
        SizedBox(
          width: 6.3,
        ),
        Text(
          "4.6",
          style: Styles.titleStyle20,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          "(2390)",
          style: Styles.titleStyle14,
        ),

      ],
    );
  }
}
