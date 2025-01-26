import 'package:flutter/material.dart';
import 'package:ibook/features/search%20screen/presentation/views/widgets/custom_search_screen_search_text_field.dart';
import 'package:ibook/features/search%20screen/presentation/views/widgets/search_books_list.dart';

import '../../../../../core/constants/constants.dart';
import 'custom_search_screen_view_app_bar.dart';

class SearchScreenViewBody extends StatefulWidget {
  const SearchScreenViewBody({super.key});

  @override
  State<SearchScreenViewBody> createState() => _SearchScreenViewBodyState();
}

class _SearchScreenViewBodyState extends State<SearchScreenViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    bookViewanimation();

    super.initState();
  }

  void bookViewanimation() {
    animationController = AnimationController(
        vsync: this, duration: splashScreenAnimationDuration);
    animation = Tween<double>(begin: 0.2, end: 1).animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            CustomSearchScreenAppBar(),
            CustomSearchScreenSearchTextField(),
            SearchScreenList(
                animationController: animationController, animation: animation)
          ],
        ),
      ),
    );
  }
}
