import 'package:book_hive/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '/constants.dart';
import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel book;
  const BookDetailsViewBody({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CustomBookDetailsAppBar(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: <Widget>[
              BookDetailsSection(book: book),
              const SizedBox(height: 30),
              const SimilarBooksSection(),
            ],
          ),
        ),
      ],
    );
  }
}
