import 'package:flutter/material.dart';
import 'package:ibook/features/books%20screen/data/model/book_model/book_model.dart';

import 'widgets/book_details_screen_boy.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key, required this.bookItem});
  final BookModel bookItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsScreenBody(bookItem: bookItem),
    );
  }
}
