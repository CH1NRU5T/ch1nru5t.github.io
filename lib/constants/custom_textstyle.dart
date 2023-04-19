import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle getCustomTextStyle({double? size, Color? color, FontWeight? weight}) {
  return GoogleFonts.montserrat(
      fontSize: size ?? 14,
      color: color ?? Colors.white,
      fontWeight: weight ?? FontWeight.normal);
}
