import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../data/models/book_model/book_model.dart';
import '../book_details_view.dart';

class CustomBookImage extends StatelessWidget {
  final BookModel book;
  final String imageUrl;
  const CustomBookImage(
      {super.key, required this.imageUrl, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(context, BookDetailsView(book: book));
        // GoRouter.of(context).push(AppRouter.kBookDetailsViewRoute);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 1.5 / 2,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
