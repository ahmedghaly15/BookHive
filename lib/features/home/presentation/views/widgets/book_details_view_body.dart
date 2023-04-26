import 'package:book_hive/constants.dart';
import 'package:book_hive/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: <Widget>[
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.12,
              vertical: kDefaultPadding / 2,
            ),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
