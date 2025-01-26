import 'package:flutter/material.dart';
import 'package:ibook/core/constants/constants.dart';
import 'package:ibook/core/constants/styles.dart';
import 'package:ibook/features/books%20screen/presentation/views/widgets/best_seller_list.dart';
import 'package:ibook/features/books%20screen/presentation/views/widgets/first_book_view_list.dart';

import 'custom_books_view_appbar.dart';

class BooksScreenViewBody extends StatefulWidget {
  const BooksScreenViewBody({super.key});

  @override
  State<BooksScreenViewBody> createState() => _BooksScreenViewBodyState();
}

class _BooksScreenViewBodyState extends State<BooksScreenViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  late Animation<double> opacityAnimation;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: splashScreenAnimationDuration);
    animation = Tween<Offset>(begin: Offset(2, 0), end: Offset(0, 0)).animate(
        CurvedAnimation(parent: animationController, curve: Curves.decelerate));
    animationController.forward();
    opacityAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: CustomBooksViewAppBar(),
          ),
          SliverToBoxAdapter(
            child: LatestBooksListView(),
          ),
          SliverPadding(padding: EdgeInsets.all(10)),
          SliverToBoxAdapter(
            child: AnimatedBuilder(
                animation: animationController,
                builder: (context, _) {
                  return SlideTransition(
                    position: animation,
                    child: Text(
                      "Best Seller",
                      style: Styles.kStyle1,
                    ),
                  );
                }),
          ),
          SliverPadding(padding: EdgeInsets.all(1)),
          BestSellerList(
            animation: opacityAnimation,
            animationController: animationController,
          ),
          SliverToBoxAdapter(
            child: LatestBooksListView(),
          ),
        ],
      ),
    );
  }
}
