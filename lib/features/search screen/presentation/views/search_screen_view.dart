import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibook/core/api_service.dart';
import 'package:ibook/features/books%20screen/data/repos/book_screen_repo_implementation.dart';
import 'package:ibook/features/books%20screen/presentation/view_model/latest_book_cubit/latest_books_cubit.dart';
import 'package:ibook/features/search%20screen/presentation/view%20model/search_cubit/search_cubit.dart';

import 'widgets/search_screen_view_body.dart';

class SearchScreenView extends StatelessWidget {
  const SearchScreenView({super.key});

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
          create: (context) => SearchCubit(),
        ),
      ],
      child: Scaffold(
        body: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            return SearchScreenViewBody();
          },
        ),
      ),
    );
  }
}
