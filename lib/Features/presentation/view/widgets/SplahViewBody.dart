import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplahViewBody extends StatelessWidget {
  const SplahViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(AssetsData.logo,width: 75,height: 75,fit: BoxFit.contain,)
      ],
    );
  }
}
