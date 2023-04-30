import 'package:flutter/material.dart';

import '/constants.dart';
import 'shimmer_book_list_view_item.dart';

class ShimmerNewestListView extends StatelessWidget {
  const ShimmerNewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        // Download all items at the same time
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ShimmerBookListViewItem();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
      ),
    );
  }
}
