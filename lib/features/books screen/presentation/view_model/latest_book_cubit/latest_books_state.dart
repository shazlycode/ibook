part of 'latest_books_cubit.dart';

sealed class LatestBooksState extends Equatable {
  const LatestBooksState();

  @override
  List<Object> get props => [];
}

final class LatestBooksInitial extends LatestBooksState {}

final class LatestBooksSucces extends LatestBooksState {
  final List<BookModel> books;

  const LatestBooksSucces({required this.books});
}

final class LatestBooksFailure extends LatestBooksState {
  final String errorMessage;

  const LatestBooksFailure({required this.errorMessage});
}

final class LatestBooksLoading extends LatestBooksState {}
