import 'package:flutter/material.dart';

import '/constants.dart';
import '/core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';
import 'newest_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Featured",
                      style: Styles.textStyle22,
                    ),
                    FeaturedBooksListView(),
                    SizedBox(height: 20),
                    Text(
                      "Newest",
                      style: Styles.textStyle22,
                    ),
                    SizedBox(height: 18),
                  ],
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: NewestListView(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),
      ],
    );
  }
}
