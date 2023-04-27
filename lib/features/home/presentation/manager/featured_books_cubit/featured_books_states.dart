// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_hive/features/home/data/models/book_model/book_model.dart';

abstract class FeaturedBooksStates {
  const FeaturedBooksStates();
}

class FeaturedBooksInitialState extends FeaturedBooksStates {}

class FeaturedBooksLoadingState extends FeaturedBooksStates {}

class FeaturedBooksFailureState extends FeaturedBooksStates {
  final String errorMessage;
  const FeaturedBooksFailureState(this.errorMessage);
}

class FeaturedBooksSuccessState extends FeaturedBooksStates {
  final List<BookModel> books;
  const FeaturedBooksSuccessState(this.books);
}
