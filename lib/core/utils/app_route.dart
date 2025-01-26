import 'package:go_router/go_router.dart';
import 'package:ibook/features/books%20screen/presentation/views/books_screen_view.dart';

class AppRoute {
  final goRoute = GoRouter(routes: [
    // GoRoute(path: "/", builder: (context, state) => const SplashScreenView()),
    GoRoute(path: "/", builder: (context, state) => BooksScreenView()),
  ]);
}
