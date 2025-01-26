import 'package:dartz/dartz.dart';
import 'package:ibook/core/failure.dart';
import 'package:ibook/features/books%20screen/data/model/book_model/book_model.dart';

abstract class BooksScreenRepo {
  Future<Either<Failure, List<BookModel>>> fetchLatestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
