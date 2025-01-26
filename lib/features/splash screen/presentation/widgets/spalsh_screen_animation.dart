import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/constants.dart';

class SpalshScreenAnimation extends StatefulWidget {
  const SpalshScreenAnimation({super.key});

  @override
  State<SpalshScreenAnimation> createState() => _SpalshScreenAnimationState();
}

class _SpalshScreenAnimationState extends State<SpalshScreenAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  void navigateToHome(BuildContext context) async {
    Future<void>.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).push('/booksScreenView');
    });
  }

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: splashScreenAnimationDuration);
    slidingAnimation = Tween<Offset>(begin: Offset(0, 50), end: Offset(0, 0))
        .animate(animationController);
    animationController.forward();
    navigateToHome(context);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
              position: slidingAnimation, child: Text("Feed Your Mind!!!"));
        });
  }
}
