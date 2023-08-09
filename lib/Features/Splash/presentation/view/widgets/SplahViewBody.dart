import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constant.dart';
import '../../../../home/presentation/view/HomeView.dart';
import 'SlidingText.dart';

class SplahViewBody extends StatefulWidget {
  const SplahViewBody({super.key});

  @override
  State<SplahViewBody> createState() => _SplahViewBodyState();
}

class _SplahViewBodyState extends State<SplahViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation; //

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Image.asset(AssetsData.logo),
        SvgPicture.asset(
          AssetsData.logo,
          width: 75,
          height: 75,
          fit: BoxFit.contain,
        ),
        const SizedBox(
          height: 5,
        ),
        SlidingText(slidingAnimation: slidingAnimation,)
      ],
    );
  }
  void initSlidingAnimation(){
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    slidingAnimation=Tween<Offset>(begin:const Offset(0,3) ,end: Offset.zero).animate(animationController);
    animationController.forward();
  }
  void navigateToHome(){
    Future.delayed(Duration(seconds: 2), (){
      Get.to(()=>HomeView(),transition: Transition.fade,duration: kTranstionDuration);
    });
  }
}

