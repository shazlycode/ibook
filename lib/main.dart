import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibook/core/api_service.dart';
import 'package:ibook/core/utils/app_route.dart';
import 'package:ibook/features/books%20screen/data/repos/book_screen_repo_implementation.dart';
import 'package:ibook/features/books%20screen/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:ibook/features/books%20screen/presentation/view_model/latest_book_cubit/latest_books_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LatestBooksCubit(
              BookScreenRepoImplementation(apiService: ApiService(dio: Dio())))
            ..fetchLatestBooks(),
        ),
        BlocProvider(
            create: (context) => FeaturedBooksCubitCubit(
                BookScreenRepoImplementation(
                    apiService: ApiService(dio: Dio())))
              ..fetchFeaturedBooks())
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        routerConfig: AppRoute().goRoute,
      ),
    );
  }
}
