import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Constants {
  static double getTextSizeFromDevice() {
    return defaultTargetPlatform == TargetPlatform.iOS ||
            defaultTargetPlatform == TargetPlatform.android
        ? 25
        : 40;
  }

  static double getTextButtonSizeFromDevice() {
    return defaultTargetPlatform == TargetPlatform.iOS ||
            defaultTargetPlatform == TargetPlatform.android
        ? 15
        : 20;
  }

  static BoxDecoration glassMorph() {
    return BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 0.2,
            blurRadius: 25,
            blurStyle: BlurStyle.outer,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(width: 2, color: Colors.white.withOpacity(0.2)),
        color: Colors.white.withOpacity(0.3));
  }

  static String imagesPath = 'assets/images/';

  static LinearGradient gradient() {
    return const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xfff85187),
          Color(0xff3ac3cb),
        ]);
  }
}
