import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    var MediaHight=MediaQuery.of(context).size.height;
    var MediaWedith=MediaQuery.of(context).size.width;

    return SizedBox(
      height: MediaHight*.3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          height: MediaHight*0.25,
          width: MediaWedith*0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.amberAccent,
              image: DecorationImage(

                image: AssetImage(AssetsData.test),
                fit: BoxFit.fill,
              )
          ),
        ),
      ),
    );
  }
}
