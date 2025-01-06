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
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/reading.png",
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: const Text(
                      "Welcome to U Learning",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: const Text(
                      "Welcome to U Learning",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          const Positioned(child: Text("jbcv c")),
        ],
      ),
    );
  }
}
