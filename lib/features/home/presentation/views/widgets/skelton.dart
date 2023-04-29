import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class Skelton extends StatelessWidget {
  final double? height, width;
  const Skelton({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) {
        return LinearGradient(
          colors: [
            kSeconderyColor.withOpacity(0.9),
            const Color(0xFFF4F4F4),
            kSeconderyColor.withOpacity(0.8),
          ],
          stops: const [
            0.1,
            0.3,
            0.4,
          ],
          begin: const Alignment(-1.0, -0.3),
          end: const Alignment(1.0, 0.3),
          tileMode: TileMode.clamp,
        ).createShader(bounds);
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: const Color(0xFFEBEBF4),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
