import 'package:book_hive/features/search/data/repo/search_repo.dart';
import 'package:book_hive/features/search/presentation/manager/search_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit(this.searchRepo) : super(SearchInitialState());
  final SearchRepo searchRepo;

  void getSearchResult(String value) {
    emit(SearchLoadingState());
    searchRepo.getSearchResult(value).then(
      (result) {
        result.fold(
          (failure) {
            emit(SearchFailureState(failure.errorMessage));
          },
          (search) {
            emit(SearchSuccessState(search));
          },
        );
      },
    );
  }
}
