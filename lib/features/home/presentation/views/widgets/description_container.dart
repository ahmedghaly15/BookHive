import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/models/book_model/book_model.dart';
import '../../../../../core/utils/styles.dart';

class DescriptionContainer extends StatelessWidget {
  final BookModel book;
  const DescriptionContainer({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding / 2,
        horizontal: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        color: kSeconderyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        book.volumeInfo.description!,
        maxLines: 5,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.justify,
        style: Styles.textStyle14.copyWith(height: 1.5),
      ),
    );
  }
}
