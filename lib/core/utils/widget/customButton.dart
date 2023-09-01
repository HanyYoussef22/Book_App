import 'package:flutter/material.dart';

import '../../../shard/styles/clors.dart';
import '../styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
       this.borderRadius,
      required this.text, this.onPressed});

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    var mediaHidth = MediaQuery.of(context).size.height;
    return SizedBox(
        height: mediaHidth * 0.07,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius:borderRadius ?? BorderRadius.circular(16))),
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.titleStyle20N.copyWith(color: textColor),
          ),
        ));
  }
}
