import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class CustomListViewImage extends StatelessWidget {
  String imagrUrl;
  CustomListViewImage({Key? key,required this.imagrUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding:  EdgeInsets.only(left: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: AspectRatio(
          aspectRatio: 2.8 / 3.8,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imagrUrl ,
            // placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
