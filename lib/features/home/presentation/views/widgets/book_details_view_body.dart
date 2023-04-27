import 'package:book_hive/constants.dart';
import 'package:book_hive/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_hive/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_actions.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
              Padding(
                padding: EdgeInsets.only(
                  right: screenWidth * 0.12,
                  left: screenWidth * 0.12,
                  bottom: 43,
                  top: kDefaultPadding / 2,
                ),
                child: const CustomBookImage(),
              ),
              Text(
                "The Jungle Book",
                style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 6),
              Opacity(
                opacity: 0.7,
                child: Text(
                  "Rudyard Kipling",
                  style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(height: 30),
              const BookActions(),
              const SizedBox(height: 35),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also like",
                  style:
                      Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 15),
              const SimilarBooksListView(),
            ],
          ),
        ),
      ],
    );
  }
}
