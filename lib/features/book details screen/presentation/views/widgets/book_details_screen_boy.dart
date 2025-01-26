import 'package:flutter/material.dart';

import '../../../../books screen/presentation/views/widgets/first_book_view_list.dart';
import 'book_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            CustomBookDetialsAppBar(),
            BookSection(),
            SliverToBoxAdapter(
              child: Text("Related Books"),
            ),
            SliverToBoxAdapter(child: LatestBooksListView()),
          ],
        ),
      ),
    );
  }
}
