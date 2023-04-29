import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xff102e44);
const Color kSeconderyColor = Color(0xff072136);

const Duration kTransitionDuration = Duration(milliseconds: 250);

const String kGTSectraFine = 'GT Sectra Fine';

const double kDefaultPadding = 24.0;

void navigateBack(context) {
  Navigator.pop(context);
}

Route createRoute(Widget screen) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => screen,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final tween = Tween<double>(
        begin: 0,
        end: 1,
      );
      final opacityAnimation = tween.animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.easeInExpo,
        ),
      );
      return FadeTransition(
        opacity: opacityAnimation,
        child: child,
      );
    },
  );
}

void navigateTo({
  required BuildContext context,
  required Widget screen,
}) {
  Navigator.of(context).push(createRoute(screen));
}

void navigateAndFinish({
  required BuildContext context,
  required Widget screen,
}) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => screen),
    (Route<dynamic> route) => false, // remove all previous routes
  );
}
