import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle(double size, [Color? color, FontWeight? fw]) {
  return GoogleFonts.montserrat(fontSize: size, color: color, fontWeight: fw);
}

List selectableTimes = [
  "60",
  "600",
  "1200",
  "1500",
  "1800",
  "2700",
  "3600",
  "5400",
  "7200"
];