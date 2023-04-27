import 'package:book_hive/features/home/data/repos/home_repo_implementation.dart';
import 'package:book_hive/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_hive/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/service_locator.dart';
import '../../../../core/models/book_model/book_model.dart';

class BookDetailsView extends StatelessWidget {
  final BookModel book;
  const BookDetailsView({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
      child: Scaffold(
        body: SafeArea(
          child: BookDetailsViewBody(book: book),
        ),
      ),
    );
  }
}
