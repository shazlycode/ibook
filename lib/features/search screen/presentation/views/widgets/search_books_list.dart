import 'package:flutter/material.dart';
import 'package:ibook/features/books%20screen/presentation/views/widgets/latest_books_list.dart';

class SearchScreenList extends StatelessWidget {
  const SearchScreenList(
      {super.key, required this.animationController, required this.animation});
  final AnimationController animationController;
  final Animation<double> animation;
  @override
  Widget build(BuildContext context) {
    return LatestBooksList(
        animationController: animationController, animation: animation);
  }
}
