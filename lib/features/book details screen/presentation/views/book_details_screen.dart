import 'package:flutter/material.dart';

import 'widgets/book_details_screen_boy.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsScreenBody(),
    );
  }
}
