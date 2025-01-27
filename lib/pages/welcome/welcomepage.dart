import 'package:flutter/material.dart';

import 'widgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller
        .dispose(); // Clean up the controller when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            children: [
              appOnBoarding(_controller,
                  imagePath: 'assets/images/reading.png',
                  title: 'Learn To the Frist learn',
                  subtitle: 'Learn new things and improve your skills',
                  index: 1),
              appOnBoarding(_controller,
                  imagePath: 'assets/images/man.png',
                  title: 'Learn To the Frist learn',
                  subtitle: 'Learn new things and improve your skills',
                  index: 2),
              appOnBoarding(_controller,
                  imagePath: 'assets/images/boy.png',
                  title: 'Learn To the Frist learn',
                  subtitle: 'Learn new things and improve your skills',
                  index: 3),
            ],
          ),
          const Positioned(child: Text("jbcv c")),
        ],
      ),
    );
  }
}
