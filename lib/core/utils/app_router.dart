import 'package:book_hive/features/home/presentation/views/home_view.dart';
import 'package:book_hive/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeViewRoute = '/homeView';

  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeViewRoute,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
