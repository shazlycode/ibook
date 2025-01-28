import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibook/features/books%20screen/presentation/view_model/latest_book_cubit/latest_books_cubit.dart';
import 'latest_books_item.dart';

class LatestBooksList extends StatelessWidget {
  const LatestBooksList(
      {super.key,
      required this.animationController,
      required this.animation,
      this.searchText});
  final AnimationController animationController;
  final Animation<double> animation;
  final String? searchText;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LatestBooksCubit, LatestBooksState>(
      builder: (context, state) {
        if (state is LatestBooksSucces) {
          return SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return AnimatedBuilder(
                animation: animationController,
                builder: (BuildContext context, Widget? child) {
                  return FadeTransition(
                      opacity: animation,
                      child: BestSellerItem(
                        bookitem: state.books[index],
                      ));
                },
              );
            }, childCount: state.books.length),
          );
        } else if (state is LatestBooksFailure) {
          return SliverToBoxAdapter(
            child: Text(state.errorMessage),
          );
        } else {
          return SliverToBoxAdapter(
              child: Center(
            child: SizedBox(
                height: 25, width: 25, child: CircularProgressIndicator()),
          ));
        }
      },
    );
  }
}
