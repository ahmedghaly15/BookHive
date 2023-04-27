import 'package:flutter_bloc/flutter_bloc.dart';

import '/features/home/data/repos/home_repo.dart';
import '/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitialState());

  final HomeRepo homeRepo;

  void fetchFeaturedBooks() {
    emit(FeaturedBooksLoadingState());

    homeRepo.fetchFeaturedBooks().then((result) {
      result.fold(
        (failure) {
          emit(FeaturedBooksFailureState(failure.errorMessage));
        },
        (books) {
          emit(FeaturedBooksSuccessState(books));
        },
      );
    });
  }
}
