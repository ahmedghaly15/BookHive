import 'package:flutter/material.dart';

import '/constants.dart';
import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
            children: const <Widget>[
              BookDetailsSection(),
              SizedBox(height: 35),
              SimilarBooksSection(),
            ],
          ),
        ),
      ],
    );
  }
}
