import 'package:book_hive/shared/widgets/title_text.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const CustomAppBar(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              TitleText(text: "Featured"),
              FeaturedBooksListView(),
            ],
          ),
        ),
      ],
    );
  }
}
