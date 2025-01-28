import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:ibook/core/api_service.dart';
import 'package:ibook/features/books%20screen/data/repos/book_screen_repo_implementation.dart';

void setupDependencyInjection() {
  var locator = GetIt.instance;
  var apiSericeocator =
      locator.registerSingleton<ApiService>(ApiService(dio: Dio()));
  locator.registerSingleton<BookScreenRepoImplementation>(
      BookScreenRepoImplementation(apiService: apiSericeocator));
}
