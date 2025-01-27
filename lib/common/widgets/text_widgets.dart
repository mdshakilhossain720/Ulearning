import 'package:flutter/material.dart';

Widget text24Normal({required String text}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
  );
}

Widget text16Normal({required String text}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
  );
}
