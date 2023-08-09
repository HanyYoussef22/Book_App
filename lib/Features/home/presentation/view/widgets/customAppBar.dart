import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          width: 20,
          height: 20,
          fit: BoxFit.contain,
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.search))
      ],
    );
  }
}
