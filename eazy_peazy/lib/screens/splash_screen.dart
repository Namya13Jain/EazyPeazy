import 'package:eazy_peazy/screens/home_screen.dart';

import 'package:eazy_peazy/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: const Color.fromRGBO(94, 93, 93, 1),
      centered: true,
      splash: 'assets/logo.png',
      splashIconSize: 400,
      nextScreen: const SignInScreen(),
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
    );
  }
}
