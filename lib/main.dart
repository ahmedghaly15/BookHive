import 'package:book_hive/constants.dart';
import 'package:book_hive/core/utils/app_router.dart';
import 'package:book_hive/core/utils/service_locator.dart';
import 'package:book_hive/features/home/data/repos/home_repo_implementation.dart';
import 'package:book_hive/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_hive/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_bloc_observer.dart';

void main() {
  //============= Observing My Bloc =============
  Bloc.observer = MyBlocObserver();
  setupServiceLocator();
  runApp(const BookHiveApp());
}

class BookHiveApp extends StatelessWidget {
  const BookHiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
            ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
        // home: const SplashView(),
      ),
    );
  }
}
