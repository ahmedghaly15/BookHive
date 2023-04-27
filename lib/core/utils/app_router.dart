// import 'package:book_hive/core/utils/service_locator.dart';
// import 'package:book_hive/features/home/data/models/book_model/book_model.dart';
// import 'package:book_hive/features/home/presentation/views/book_details_view.dart';
// import 'package:book_hive/features/home/presentation/views/home_view.dart';
// import 'package:book_hive/features/search/presentation/views/search_view.dart';
// import 'package:book_hive/features/splash/presentation/views/splash_view.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';

// import '../../features/home/data/repos/home_repo_implementation.dart';
// import '../../features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';

// abstract class AppRouter {
//   static const String kHomeViewRoute = '/homeView';
//   static const String kBookDetailsViewRoute = '/bookDetailsView';
//   static const String kSearchViewRoute = '/searchView';

//   static final router = GoRouter(
//     routes: <RouteBase>[
//       GoRoute(
//         path: '/',
//         builder: (context, state) => const SplashView(),
//       ),
//       GoRoute(
//         path: kHomeViewRoute,
//         builder: (context, state) => const HomeView(),
//       ),
//       GoRoute(
//         path: kBookDetailsViewRoute,
//         builder: (context, state) => BlocProvider(
//           create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
//           child: BookDetailsView(book: state.extra as BookModel),
//         ),
//       ),
//       GoRoute(
//         path: kSearchViewRoute,
//         builder: (context, state) => const SearchView(),
//       ),
//     ],
//   );
// }
