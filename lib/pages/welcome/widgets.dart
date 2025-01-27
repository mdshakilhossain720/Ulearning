import 'package:flutter/material.dart';
import 'package:ulearning/common/widgets/app_shadow.dart';

import '../../common/widgets/text_widgets.dart';

Widget appOnBoarding(
    {String imagePath = "assets/images/reading.png",
    String title = '',
    String subtitle = ''}) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Text(
          subtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      nextButton(),
    ],
  );
}

Widget nextButton() {
  return Container(
    width: 325,
    height: 50,
    margin: const EdgeInsets.only(top: 100, left: 30, right: 30),
    decoration: appShadow(),
    child: text16Normal(text: 'Next', color: Colors.white),
  );
}
