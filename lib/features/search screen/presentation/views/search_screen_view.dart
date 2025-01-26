import 'package:flutter/material.dart';

import 'widgets/search_screen_view_body.dart';

class SearchScreenView extends StatelessWidget {
  const SearchScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchScreenViewBody(),
    );
  }
}
