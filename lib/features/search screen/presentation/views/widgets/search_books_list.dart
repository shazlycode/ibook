import 'package:flutter/material.dart';
import 'package:ibook/features/books%20screen/presentation/views/widgets/best_seller_list.dart';

class SearchScreenList extends StatelessWidget {
  const SearchScreenList(
      {super.key, required this.animationController, required this.animation});
  final AnimationController animationController;
  final Animation<double> animation;
  @override
  Widget build(BuildContext context) {
    return BestSellerList(
        animationController: animationController, animation: animation);
  }
}
