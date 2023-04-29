import 'package:book_hive/constants.dart';
import 'package:book_hive/features/home/presentation/views/book_details_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '/core/models/book_model/book_model.dart';

class CustomBookImage extends StatelessWidget {
  final BookModel book;
  final String imageUrl;
  const CustomBookImage({
    super.key,
    required this.imageUrl,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(
          context: context,
          screen: BookDetailsView(
            book: book,
          ),
        );
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
