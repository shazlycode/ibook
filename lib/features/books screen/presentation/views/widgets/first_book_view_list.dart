import 'package:flutter/material.dart';

import 'book_item.dart';

class LatestBooksListView extends StatelessWidget {
  const LatestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: 6,
          itemBuilder: (context, index) {
            return BookItem();
          }),
    );
  }
}
