import 'package:flutter/material.dart';

class NewsCardSkelton extends StatelessWidget {
  const NewsCardSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 16 / 2),

        Row(
          children: [
            Skeleton(height: 120, width: 120),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Skeleton(width: 80),
                  SizedBox(height: 16 / 2),
                  Skeleton(),
                  SizedBox(height: 16 / 2),
                  Skeleton(),
                  SizedBox(height: 16 / 2),
                  Row(
                    children: [
                      Expanded(
                        child: Skeleton(),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Skeleton(),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 14 ),

        Row(
          children: [
            Skeleton(height: 120, width: 120),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Skeleton(width: 80),
                  SizedBox(height: 16 / 2),
                  Skeleton(),
                  SizedBox(height: 16 / 2),
                  Skeleton(),
                  SizedBox(height: 16 / 2),
                  Row(
                    children: [
                      Expanded(
                        child: Skeleton(),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Skeleton(),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),

      ],
    );
  }
}


class NewsCardSkeltonListHorzentil extends StatelessWidget {
  const NewsCardSkeltonListHorzentil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10,),
        Skeleton(height: 160, width: 120),
        SizedBox(width: 10,),
        Skeleton(height: 160, width: 120),


        ],
    );
  }
}

class Skeleton extends StatelessWidget {
  const Skeleton({Key? key, this.height, this.width}) : super(key: key);

  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(16 / 2),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.21),
          borderRadius:
          const BorderRadius.all(Radius.circular(16))),
    );
  }
}

// class CircleSkeleton extends StatelessWidget {
//   const CircleSkeleton({Key? key, this.size = 24}) : super(key: key);
//
//   final double? size;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: size,
//       width: size,
//       decoration: BoxDecoration(
//         color: Theme.of(context).primaryColor.withOpacity(0.04),
//         shape: BoxShape.circle,
//       ),
//     );
//   }
// }