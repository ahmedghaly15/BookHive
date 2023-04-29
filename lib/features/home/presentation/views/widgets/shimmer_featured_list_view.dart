import 'package:flutter/material.dart';

import 'shimmer_custom_book_image.dart';

class ShimmerFeaturedListView extends StatelessWidget {
  const ShimmerFeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 18),
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ShimmerCustomBookImage();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 13);
        },
      ),
    );
  }
}
