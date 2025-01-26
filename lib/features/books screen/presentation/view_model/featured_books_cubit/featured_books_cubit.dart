import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibook/features/books%20screen/data/model/book_model/book_model.dart';
import 'package:ibook/features/books%20screen/data/repos/book_screen_repo_implementation.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubitCubit extends Cubit<FeaturedBooksCubitState> {
  FeaturedBooksCubitCubit(this.bookScreenRepoImplementation)
      : super(FeaturedBooksCubitInitial());
  final BookScreenRepoImplementation bookScreenRepoImplementation;

  Future fetchFeaturedBooks() async {
    emit(FeaturedBooksCubitLoading());
    final result = await bookScreenRepoImplementation.fetchFeaturedBooks();
    result.fold((falure) {
      emit(FeaturedBooksCubitFailure(errorMessage: falure.errorMessage));
    }, (books) {
      emit(FeaturedBooksCubitSuccess(books: books));
    });
  }
}
