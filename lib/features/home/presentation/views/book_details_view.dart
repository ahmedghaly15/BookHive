import 'package:book_hive/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

import '../../data/models/book_model/book_model.dart';

class BookDetailsView extends StatelessWidget {
  final BookModel book;
  const BookDetailsView({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(book: book),
      ),
    );
  }
}
