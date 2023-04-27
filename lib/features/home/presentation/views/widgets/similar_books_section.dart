import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  final BookModel book;
  const SimilarBooksSection({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "You can also like",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 15),
        SimilarBooksListView(book: book),
      ],
    );
  }
}
