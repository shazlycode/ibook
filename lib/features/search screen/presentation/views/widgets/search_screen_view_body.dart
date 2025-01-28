import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibook/features/search%20screen/presentation/view%20model/search_cubit/search_cubit.dart';
import 'package:ibook/features/search%20screen/presentation/views/widgets/custom_search_screen_search_text_field.dart';

import '../../../../../core/constants/constants.dart';
import 'custom_search_screen_view_app_bar.dart';
import 'search_screen_list.dart';

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
        child: BlocProvider(
          create: (context) => SearchCubit(),
          child: CustomScrollView(
            slivers: [
              CustomSearchScreenAppBar(),
              CustomSearchScreenSearchTextField(),
              SearchScreenList(),
            ],
          ),
        ),
      ),
    );
  }
}
