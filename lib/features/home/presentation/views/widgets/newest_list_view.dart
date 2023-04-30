import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/constants.dart';
import '/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import '/features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';
import 'book_list_view_item.dart';
import 'shimmer_newest_list_view.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
      builder: (context, state) {
        if (state is NewestBooksSuccessState) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              // Download all items at the same time
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return BookListViewItem(book: state.books[index]);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10);
              },
            ),
          );
        } else {
          return const ShimmerNewestListView();
        }
      },
    );
  }
}
