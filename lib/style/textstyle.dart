import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appTextStyle(
    {required FontWeight fw, required double size, required Color color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(fontWeight: fw, color: color, fontSize: size));
}
