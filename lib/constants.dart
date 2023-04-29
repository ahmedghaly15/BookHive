import 'package:flutter/material.dart';
import 'package:get/get.dart';

const Color kPrimaryColor = Color(0xff102e44);

const Duration kTransitionDuration = Duration(milliseconds: 250);

const String kGTSectraFine = 'GT Sectra Fine';

const double kDefaultPadding = 24.0;

void navigateBack(context) {
  Get.back();
}

void navigateTo(context, Widget screen) {
  Get.to(screen, transition: Transition.leftToRightWithFade);
}

void navigateAndFinish(context, {required Widget screen}) {
  Get.off(
    () => screen,
    transition: Transition.fadeIn,
  );
}
