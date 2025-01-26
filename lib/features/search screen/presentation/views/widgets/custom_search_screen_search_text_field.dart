import 'package:flutter/material.dart';

class CustomSearchScreenSearchTextField extends StatelessWidget {
  const CustomSearchScreenSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: TextFormField(
        onChanged: (v) {},
        decoration: InputDecoration(
            label: Text("Search Books"),
            suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
