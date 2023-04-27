import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xff102e44);

const Duration kTransitionDuration = Duration(milliseconds: 250);

const String kGTSectraFine = 'GT Sectra Fine';

const double kDefaultPadding = 24.0;

//================== For Navigating Back ==================
void navigateBack(context) {
  Navigator.pop(context);
}

//================== For Navigating To A Screen ==================
void navigateTo(context, Widget screen) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
}

//================== For Navigating To A Screen & Remove All The Previous Screens ==================
void navigateAndFinish(context, {required Widget screen}) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => screen),
    (Route<dynamic> route) => false, // remove all previous routes
  );
}
