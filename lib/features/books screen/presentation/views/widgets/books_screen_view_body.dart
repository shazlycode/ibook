import 'package:flutter/material.dart';
import 'package:ibook/core/constants/constants.dart';
import 'package:ibook/features/books%20screen/presentation/views/widgets/latest_books_list.dart';
import 'package:ibook/features/books%20screen/presentation/views/widgets/first_book_view_list.dart';

import 'best_seller_word_aniation.dart';
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
    bookViewanimation();
    super.initState();
  }

  void bookViewanimation() {
    animationController = AnimationController(
        vsync: this, duration: splashScreenAnimationDuration);

    animation = Tween<Offset>(begin: Offset(2, 0), end: Offset(0, 0)).animate(
        CurvedAnimation(parent: animationController, curve: Curves.decelerate));

    animationController.forward();
    opacityAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          primary: true,
          slivers: [
            SliverToBoxAdapter(
              child: CustomBooksViewAppBar(),
            ),
            SliverToBoxAdapter(
              child: FeaturedBooksListView(),
            ),
            SliverPadding(padding: EdgeInsets.all(10)),
            BestSellerWordAnimation(
                animationController: animationController, animation: animation),
            SliverPadding(padding: EdgeInsets.all(1)),
            LatestBooksList(
              animation: opacityAnimation,
              animationController: animationController,
            ),
            SliverToBoxAdapter(
              child: FeaturedBooksListView(),
            ),
          ],
        ),
      ),
    );
  }
}
