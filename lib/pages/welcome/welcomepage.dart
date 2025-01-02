import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            children: [
              SizedBox(
                width: 345,
                height: 345,
                child: Image.asset("assets/images/reading.png"),
              )
            ],
          ),
          const Positioned(child: Text("jbcv c")),
        ],
      ),
    );
  }
}
