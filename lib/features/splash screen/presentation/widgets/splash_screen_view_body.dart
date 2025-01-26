import 'package:flutter/material.dart';
import 'package:ibook/core/constants/constants.dart';

import 'spalsh_screen_animation.dart';

class SplashScreenViewBody extends StatelessWidget {
  const SplashScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          kAppLogo,
          fit: BoxFit.fill,
        ),
        SpalshScreenAnimation()
      ],
    );
  }
}
