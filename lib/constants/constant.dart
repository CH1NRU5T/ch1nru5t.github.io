import 'package:flutter/material.dart';

class Constants {
  static BoxDecoration glassMorph() {
    // return BoxDecoration(
    //   borderRadius: BorderRadius.circular(20),
    //   gradient: LinearGradient(
    //     begin: Alignment.topLeft,
    //     end: Alignment.bottomRight,
    //     colors: [
    //       const Color.fromARGB(255, 225, 72, 72).withOpacity(0.1),
    //       const Color.fromARGB(255, 33, 186, 213).withOpacity(0.3),
    //     ],
    //   ),
    //   boxShadow: const [
    //     BoxShadow(
    //       color: Colors.white,
    //       blurStyle: BlurStyle.outer,

    //       spreadRadius: 2,
    //       blurRadius: 2,
    //       // offset: Offset(100, 1),
    //     ),
    //   ],
    // );
    return BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.white.withOpacity(0.2),
        blurStyle: BlurStyle.normal,

        spreadRadius: 2,
        blurRadius: 2,
        // offset: Offset(100, 1),
      ),
    ], color: Colors.white.withOpacity(0.1));
  }
}
