import 'package:flutter/material.dart';

import '../book_details_view.dart';
import '/constants.dart';
import '/core/models/book_model/book_model.dart';
import '/core/utils/styles.dart';
import '/features/home/presentation/views/widgets/custom_book_image.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  final BookModel book;
  const BookListViewItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateTo(
        context: context,
        screen: BookDetailsView(book: book),
      ),
      child: SizedBox(
        height: 130,
        child: Row(
          children: <Widget>[
            CustomBookImage(
              book: book,
              imageUrl: book.volumeInfo.imageLinks.thumbnail,
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      book.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGTSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    book.volumeInfo.authors?[0] ?? 'Unknown',
                    style: Styles.textStyle14,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Free",
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRating(book: book),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
