import 'package:flutter/material.dart';

import 'widgets/books_screen_view_body.dart';

class BooksScreenView extends StatelessWidget {
  const BooksScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BooksScreenViewBody(),
    );
  }
}
