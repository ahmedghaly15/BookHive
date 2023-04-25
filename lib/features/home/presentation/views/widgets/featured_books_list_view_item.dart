import 'package:flutter/material.dart';

class FeaturedBooksListViewItem extends StatelessWidget {
  const FeaturedBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7 / 2,
      child: Container(
        margin: const EdgeInsets.only(top: 18, right: 13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: NetworkImage(
                'https://img.freepik.com/free-vector/hand-drawn-flat-design-stack-books_23-2149334862.jpg?w=2000'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
