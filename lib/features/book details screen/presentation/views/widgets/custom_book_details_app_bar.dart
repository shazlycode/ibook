import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibook/core/constants/constants.dart';

class CustomBookDetialsAppBar extends StatelessWidget {
  const CustomBookDetialsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                context.go(kSplashScreen);
              },
              icon: Icon(Icons.arrow_back))
        ],
      ),
    );
  }
}
