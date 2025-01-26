import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ibook/core/constants/constants.dart';
import 'package:ibook/core/constants/styles.dart';
import 'package:ibook/features/books%20screen/data/model/book_model/book_model.dart';

class BookSection extends StatelessWidget {
  const BookSection({super.key, required this.bookItem});
  final BookModel bookItem;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: CachedNetworkImage(
              imageUrl: bookItem.volumeInfo!.imageLinks!.thumbnail!,
              fit: BoxFit.cover,
              height: 300,
              width: 250,
            ),
          ),
          SizedBox(height: 10),
          Text(
            bookItem.volumeInfo!.title!,
            style: Styles.kStyle1,
          ),
          SizedBox(height: 5),
          Text(
            bookItem.volumeInfo!.authors![0],
            style: Styles.kStyle3,
          ),
          SizedBox(height: 5),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                overflow: TextOverflow.fade,
                bookItem.volumeInfo!.description!,
                style: Styles.kStyle2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
