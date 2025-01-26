import 'package:flutter/material.dart';
import 'package:ibook/core/constants/constants.dart';
import 'package:ibook/core/constants/styles.dart';

class BookSection extends StatelessWidget {
  const BookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              kAppLogo,
              fit: BoxFit.cover,
              height: 300,
              width: 250,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Book Title",
            style: Styles.kStyle1,
          ),
          SizedBox(height: 5),
          Text(
            "Book Auther",
            style: Styles.kStyle3,
          ),
          SizedBox(height: 5),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                overflow: TextOverflow.fade,
                "This empowering guide takes you on a transformative journey to uncover your true potential. Blending practical strategies with inspiring insights, it helps you overcome obstacles, build resilience, and achieve personal and professional success. Whether you're seeking clarity, confidence, or motivation, this book offers the tools you need to create a life of purpose and fulfillment. Perfect for readers ready to embrace change and unlock their best selves.",
                style: Styles.kStyle2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
