import 'package:book_hive/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'book_actions.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  final BookModel book;
  const BookDetailsSection({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            right: screenWidth * 0.12,
            left: screenWidth * 0.12,
            bottom: 30,
            top: kDefaultPadding / 2,
          ),
          child: CustomBookImage(
            book: book,
            imageUrl: book.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 14),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 25),
        const BookActions(),
      ],
    );
  }
}
