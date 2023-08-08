
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  SlidingText({required this.slidingAnimation});
  late Animation<Offset> slidingAnimation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context,_) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              "Reed Books",
              textAlign: TextAlign.center,
            ),
          );
        }
    );
  }
}
