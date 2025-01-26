import 'package:flutter/material.dart';

import '../widgets/splash_screen_view_body.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenViewBody(),
    );
  }
}
