import '../../../data/models/book_model/book_model.dart';

abstract class SimilarBooksStates {
  const SimilarBooksStates();
}

class SimilarBooksInitialState extends SimilarBooksStates {}

class SimilarBooksLoadingState extends SimilarBooksStates {}

class SimilarBooksFailureState extends SimilarBooksStates {
  final String errorMessage;
  const SimilarBooksFailureState(this.errorMessage);
}

class SimilarBooksSuccessState extends SimilarBooksStates {
  final List<BookModel> books;
  const SimilarBooksSuccessState(this.books);
}
