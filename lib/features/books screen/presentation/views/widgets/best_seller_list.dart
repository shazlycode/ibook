import 'package:flutter/material.dart';

import 'best_seller_item.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList(
      {super.key, required this.animationController, required this.animation});
  final AnimationController animationController;
  final Animation<double> animation;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return AnimatedBuilder(
          animation: animationController,
          builder: (BuildContext context, Widget? child) {
            return FadeTransition(opacity: animation, child: BestSellerItem());
          },
        );
      }, childCount: 20),
    );
  }
}
