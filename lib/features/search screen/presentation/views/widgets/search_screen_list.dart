import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibook/features/books%20screen/presentation/view_model/latest_book_cubit/latest_books_cubit.dart';
import 'package:ibook/features/books%20screen/presentation/views/widgets/latest_books_item.dart';
import 'package:ibook/features/search%20screen/presentation/view%20model/search_cubit/search_cubit.dart';

class SearchScreenList extends StatelessWidget {
  const SearchScreenList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LatestBooksCubit, LatestBooksState>(
        builder: (context, latestBookState) {
      if (latestBookState is LatestBooksSucces) {
        return BlocBuilder<SearchCubit, SearchState>(
            builder: (context, searchText) {
          if (searchText is SearcTextState) {
            print("Received search text: ${searchText.searchText}");
            var books = (searchText.searchText.isEmpty)
                ? latestBookState.books
                : latestBookState.books
                    .where((e) => e.volumeInfo!.title!
                        .toLowerCase()
                        .contains(searchText.searchText.toLowerCase()))
                    .toList();
            print("Filtered books count: ${books.length}");
            return SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return BestSellerItem(bookitem: books[index]);
            }, childCount: books.length));
          }

          return SliverToBoxAdapter(
            child: Container(),
          );
        });
      }
      return SliverToBoxAdapter(
        child: Container(),
      );
    });
  }
}
