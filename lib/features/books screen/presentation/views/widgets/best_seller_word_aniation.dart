import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';

class BestSellerWordAnimation extends StatelessWidget {
  const BestSellerWordAnimation({
    super.key,
    required this.animationController,
    required this.animation,
  });

  final AnimationController animationController;
  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AnimatedBuilder(
          animation: animationController,
          builder: (context, _) {
            return SlideTransition(
              position: animation,
              child: Text(
                "Recently Added Books",
                style: Styles.kStyle1,
              ),
            );
          }),
    );
  }
}
