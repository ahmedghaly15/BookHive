import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'shimmer_similar_books_list_view.dart';
import '/core/models/book_model/book_model.dart';
import '/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import '/features/home/presentation/manager/similar_books_cubit/similar_books_states.dart';
import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  final BookModel book;
  const SimilarBooksListView({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
          category: book.volumeInfo.categories![0],
        );

        return BlocBuilder<SimilarBooksCubit, SimilarBooksStates>(
          builder: (context, state) {
            if (state is SimilarBooksSuccessState) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.11,
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return CustomBookImage(
                      book: state.books[index],
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 10);
                  },
                ),
              );
            } else {
              return const ShimmerSimilarBooksListView();
            }
          },
        );
      },
    );
  }
}
