import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibook/core/constants/constants.dart';
import 'package:ibook/core/constants/styles.dart';
import 'package:ibook/features/books%20screen/data/model/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
    required this.bookitem,
  });
  final BookModel bookitem;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(kBookDtailsScreen, extra: bookitem);
      },
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                    height: 100,
                    width: 100,
                    child: CachedNetworkImage(
                      imageUrl: bookitem.volumeInfo!.imageLinks!.thumbnail!,
                      fit: BoxFit.cover,
                    )),
              )),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      overflow: TextOverflow.clip,
                      bookitem.volumeInfo!.title!,
                      style: Styles.kStyle1,
                    ),
                    Text(
                      bookitem.volumeInfo!.authors![0],
                      style: Styles.kStyle2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Free",
                          style: Styles.kStyle3,
                        ),
                        Spacer(),
                        Icon(
                          Icons.star,
                          size: 12,
                        ),
                        Text(" 4.9 "),
                        Text("(5248)")
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
