import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          height: mediaHeight * 0.25,
          width: mediaWidth * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.amberAccent,
            image: DecorationImage(
              image: AssetImage(AssetsData.test2),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
