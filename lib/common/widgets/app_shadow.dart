import 'package:flutter/material.dart';
import 'package:ulearning/common/utilits/app_colors.dart';

BoxDecoration appShadow(
    {Color color = AppColors.primaryElement,
    double radius = 15,
    double sR = 1,
    double bR = 1}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radius),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        blurRadius: bR,
        spreadRadius: sR,
        offset: const Offset(0, 1),
      ),
    ],
  );
}
