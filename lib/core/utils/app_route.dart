import 'package:go_router/go_router.dart';
import 'package:ibook/core/constants/constants.dart';
import 'package:ibook/features/book%20details%20screen/presentation/views/book_details_screen.dart';
import 'package:ibook/features/books%20screen/data/model/book_model/book_model.dart';
import 'package:ibook/features/books%20screen/presentation/views/books_screen_view.dart';
import 'package:ibook/features/search%20screen/presentation/views/search_screen_view.dart';

import '../../features/splash screen/presentation/views/splash_screen_view.dart';

class AppRoute {
  final goRoute = GoRouter(routes: [
    GoRoute(
        path: kSplashScreen,
        builder: (context, state) => const SplashScreenView()),
    GoRoute(
        path: kBookScreenView, builder: (context, state) => BooksScreenView()),
    GoRoute(
        path: kSearchScreenPath,
        builder: (context, state) => SearchScreenView()),
    GoRoute(
        path: kBookDtailsScreen,
        builder: (contxt, state) => BookDetailsScreen(
              bookItem: state.extra as BookModel,
            )),
  ]);
}
