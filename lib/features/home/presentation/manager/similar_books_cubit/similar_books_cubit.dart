import 'package:book_hive/features/home/presentation/manager/similar_books_cubit/similar_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/home_repo.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitialState());

  final HomeRepo homeRepo;

  void fetchSimilarBooks({required String category}) {
    emit(SimilarBooksLoadingState());
    homeRepo.fetchSimilarBooks(category: category).then((result) {
      result.fold((failure) {
        emit(SimilarBooksFailureState(failure.errorMessage));
      }, (books) {
        emit(SimilarBooksSuccessState(books));
      });
    });
  }
}
