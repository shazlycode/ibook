import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  void updateSearchText(String text) {
    print("updateSearchText called with: $text");
    emit(SearcTextState(searchText: text));
    print("Emitted search text: $text");
  }
}
