import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

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
          return const CustomBookImage();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 13);
        },
      ),
    );
  }
}
