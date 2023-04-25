import 'package:book_hive/core/utils/styles.dart';
import 'package:book_hive/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const CustomAppBar(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Featured",
                      style: Styles.textStyle22,
                    ),
                    FeaturedBooksListView(),
                    SizedBox(height: 20),
                    Text(
                      "Best Seller",
                      style: Styles.textStyle22,
                    ),
                    SizedBox(height: 18),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: BestSellerListView(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        // Download all items at the same time
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BestSellerListViewItem();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
      ),
    );
  }
}
