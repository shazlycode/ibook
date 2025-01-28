part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearcTextState extends SearchState {
  final String searchText;
  @override
  List<Object> get props => [searchText];
  const SearcTextState({required this.searchText});
}
