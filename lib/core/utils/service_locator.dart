import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '/core/utils/api_service.dart';
import '/features/home/data/repos/home_repo_implementation.dart';
import '/features/search/data/repo/search_repo_impl.dart';

// Dependency Injection Concept

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );

  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(getIt.get<ApiService>()),
  );
}
