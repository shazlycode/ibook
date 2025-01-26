import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ibook/features/books%20screen/data/model/book_model/book_model.dart';
import 'package:ibook/features/books%20screen/data/repos/book_screen_repo_implementation.dart';

part 'latest_books_state.dart';

class LatestBooksCubit extends Cubit<LatestBooksState> {
  LatestBooksCubit(this.bookScreenRepoImplementation)
      : super(LatestBooksInitial());
  final BookScreenRepoImplementation bookScreenRepoImplementation;
  Future fetchLatestBooks() async {
    emit(LatestBooksLoading());
    final result = await bookScreenRepoImplementation.fetchLatestBooks();
    print("result= $result");
    result.fold((failure) {
      emit(LatestBooksFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(LatestBooksSucces(books: books));
    });
  }
}
