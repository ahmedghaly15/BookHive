import 'package:flutter/material.dart';

import '/constants.dart';
import '/core/models/book_model/book_model.dart';
import '/core/utils/styles.dart';
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
          child: Hero(
            tag: book.id!,
            child: CustomBookImage(
              book: book,
              imageUrl: book.volumeInfo.imageLinks.thumbnail,
            ),
          ),
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo.authors?[0] ?? 'Unknown',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 14),
        BookRating(
          book: book,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 25),
        if (book.volumeInfo.description != null)
          DescriptionContainer(book: book),
        const SizedBox(height: 25),
        BookActions(book: book),
      ],
    );
  }
}

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
        color: const Color.fromARGB(255, 7, 33, 54),
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
