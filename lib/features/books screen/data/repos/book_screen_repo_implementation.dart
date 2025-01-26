import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ibook/core/api_service.dart';
import 'package:ibook/core/failure.dart';
import 'package:ibook/features/books%20screen/data/model/book_model/book_model.dart';
import 'package:ibook/features/books%20screen/data/repos/book_screen_repo.dart';

class BookScreenRepoImplementation implements BooksScreenRepo {
  final ApiService apiService;

  BookScreenRepoImplementation({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      final data = await apiService.fetchBooks(endpoint: "volumes?q=coding");
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(SeverFailure.fromDioError(e));
      } else {
        return left(SeverFailure(errorMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchLatestBooks() async {
    try {
      var data =
          await apiService.fetchBooks(endpoint: "volumes?q=api&Sorting=newest");
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(SeverFailure.fromDioError(e));
      }
      return left(SeverFailure(errorMessage: e.toString()));
    }
  }
}
