part of 'featured_books_cubit.dart';

sealed class FeaturedBooksCubitState extends Equatable {
  const FeaturedBooksCubitState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksCubitInitial extends FeaturedBooksCubitState {}

final class FeaturedBooksCubitLoading extends FeaturedBooksCubitState {}

final class FeaturedBooksCubitSuccess extends FeaturedBooksCubitState {
  final List<BookModel> books;

  const FeaturedBooksCubitSuccess({required this.books});
}

final class FeaturedBooksCubitFailure extends FeaturedBooksCubitState {
  final String? errorMessage;

  const FeaturedBooksCubitFailure({required this.errorMessage});
}
