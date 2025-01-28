import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibook/features/books%20screen/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';

import 'book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubitCubit, FeaturedBooksCubitState>(
      builder: (context, state) {
        if (state is FeaturedBooksCubitSuccess) {
          return SizedBox(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return BookItem(
                    bookItem: state.books[index],
                  );
                }),
          );
        } else if (state is FeaturedBooksCubitFailure) {
          return Center(
              child: Text(
            state.errorMessage!,
          ));
        } else {
          return Center(
            child: SizedBox(
                height: 25, width: 25, child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
