import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ibook/core/constants/constants.dart';
import 'package:ibook/features/books%20screen/data/model/book_model/book_model.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.bookItem});
  final BookModel bookItem;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: AspectRatio(
          aspectRatio: 2.5 / 3.5,
          child: CachedNetworkImage(
            imageUrl: bookItem.volumeInfo!.imageLinks!.smallThumbnail!,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
