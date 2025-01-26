import 'package:flutter/material.dart';
import 'package:ibook/core/constants/styles.dart';

class CustomBooksViewAppBar extends StatelessWidget {
  const CustomBooksViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "iBook",
            style: Styles.kStyle1,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
