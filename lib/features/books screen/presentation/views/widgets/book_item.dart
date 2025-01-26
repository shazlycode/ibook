import 'package:flutter/material.dart';
import 'package:ibook/core/constants/constants.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: AspectRatio(
          aspectRatio: 2.5 / 3.5,
          child: Image.asset(
            kAppLogo,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
