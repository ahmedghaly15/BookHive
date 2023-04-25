import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final double size;
  final String text;

  const TitleText({
    super.key,
    this.size = 26,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      ),
    );
  }
}
