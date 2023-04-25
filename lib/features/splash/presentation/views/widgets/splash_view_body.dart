import 'package:book_hive/constants.dart';
import 'package:book_hive/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/assets_data.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();

    initFadingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // To rebuild only this widget
      child: AnimatedBuilder(
        animation: fadeAnimation,
        builder: (context, _) => FadeTransition(
          opacity: fadeAnimation,
          child: Image.asset(
            AssetsData.logo,
          ),
        ),
      ),
    );
  }

  void initFadingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(milliseconds: 3500),
      () {
        Get.off(
          () => const HomeView(),
          transition: Transition.fade,
          duration: kTransitionDuration,
        );
      },
    );
  }
}
