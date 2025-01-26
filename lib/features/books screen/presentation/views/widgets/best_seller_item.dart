import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibook/core/constants/constants.dart';
import 'package:ibook/core/constants/styles.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(kBookDtailsScreen);
      },
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(child: Image.asset(kAppLogo)),
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
                      "Title Title Title Title Title Title Title Title",
                      style: Styles.kStyle1,
                    ),
                    Text(
                      "Auther Auther Auther ",
                      style: Styles.kStyle2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Rating",
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
