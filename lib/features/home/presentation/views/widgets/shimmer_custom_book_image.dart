import 'package:flutter/material.dart';

import 'skelton.dart';

class ShimmerCustomBookImage extends StatelessWidget {
  const ShimmerCustomBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5 / 2,
      child: Skelton(
        height: MediaQuery.of(context).size.height * 0.3,
      ),
    );
  }
}
