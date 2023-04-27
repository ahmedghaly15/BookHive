import 'package:book_hive/core/utils/api_service.dart';
import 'package:book_hive/core/models/book_model/book_model.dart';
import 'package:book_hive/core/errors/failure.dart';
import 'package:book_hive/features/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;
  const SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> getSearchResult(String value) async {
    try {
      var data = await apiService.getData(
        endPoint: 'volumes?Filtering=free-ebooks&q= $value',
      );

      List<BookModel> search = [];

      for (var item in data['items']) {
        search.add(BookModel.fromJson(item));
      }

      return right(search);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
