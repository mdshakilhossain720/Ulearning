import 'package:flutter/material.dart';

import 'widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            children: [
              appOnBoarding(
                  imagePath: 'assets/images/reading.png',
                  title: 'Learn To the Frist learn',
                  subtitle: 'Learn new things and improve your skills'),
              appOnBoarding(),
              appOnBoarding(),
            ],
          ),
          const Positioned(child: Text("jbcv c")),
        ],
      ),
    );
  }
}
