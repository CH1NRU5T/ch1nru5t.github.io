import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.onPressed,
      required this.textColor,
      required this.text});
  final Color backgroundColor;
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        shape: RoundedRectangleBorder(
            side: const BorderSide(
                color: Color.fromARGB(255, 12, 112, 195), width: 2.5),
            borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        backgroundColor: backgroundColor,
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
