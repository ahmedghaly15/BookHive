import '/core/models/book_model/book_model.dart';

abstract class SearchStates {
  const SearchStates();
}

class SearchInitialState extends SearchStates {}

class SearchLoadingState extends SearchStates {}

class SearchFailureState extends SearchStates {
  final String errorMessage;
  const SearchFailureState(this.errorMessage);
}

class SearchSuccessState extends SearchStates {
  final List<BookModel> search;
  const SearchSuccessState(this.search);
}
