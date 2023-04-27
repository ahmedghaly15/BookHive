import 'package:book_hive/core/widgets/custom_error_widget.dart';
import 'package:book_hive/core/widgets/custom_loading_indicator.dart';
import 'package:book_hive/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_hive/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 18),
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return CustomBookImage(
                  imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 13);
              },
            ),
          );
        } else if (state is FeaturedBooksFailureState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
