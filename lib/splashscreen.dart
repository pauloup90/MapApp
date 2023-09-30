import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'map_home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body:AnimatedSplashScreen(
          splash: 'assets/images/pg.png',
          nextScreen: HomeScreen(),
          splashTransition: SplashTransition.sizeTransition,

        )
    );
  }
}
