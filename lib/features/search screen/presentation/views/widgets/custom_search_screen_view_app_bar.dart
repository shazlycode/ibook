import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSearchScreenAppBar extends StatelessWidget {
  const CustomSearchScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(Icons.arrow_back)),
        ],
      ),
    );
  }
}
