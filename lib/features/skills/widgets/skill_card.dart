import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({super.key, required this.imagePath, required this.text});
  final String imagePath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 180,
      child: Card(
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Image.asset(
              imagePath,
              height: 100,
              width: 100,
            )),
            FittedBox(
                child: Text(
              text,
              style: GoogleFonts.montserrat(
                  fontSize: 20, fontWeight: FontWeight.w500),
            )),
          ],
        ),
      ),
    );
  }
}
