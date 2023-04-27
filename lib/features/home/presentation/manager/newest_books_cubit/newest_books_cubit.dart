import 'package:flutter_bloc/flutter_bloc.dart';

import '/features/home/data/repos/home_repo.dart';
import '/features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitialState());

  final HomeRepo homeRepo;

  void fetchNewestBooks() {
    emit(NewestBooksLoadingState());
    homeRepo.fetchNewestBooks().then((result) {
      result.fold((failure) {
        emit(NewestBooksFailureState(failure.errorMessage));
      }, (books) {
        emit(NewestBooksSuccessState(books));
      });
    });
  }
}
