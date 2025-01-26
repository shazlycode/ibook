import 'package:flutter/material.dart';
import 'package:ibook/features/books%20screen/data/model/book_model/book_model.dart';

import '../../../../books screen/presentation/views/widgets/first_book_view_list.dart';
import 'book_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key, required this.bookItem});
  final BookModel bookItem;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            CustomBookDetialsAppBar(),
            BookSection(bookItem: bookItem),
            SliverToBoxAdapter(
              child: Text("Related Books"),
            ),
            SliverToBoxAdapter(child: FeaturedBooksListView()),
          ],
        ),
      ),
    );
  }
}
