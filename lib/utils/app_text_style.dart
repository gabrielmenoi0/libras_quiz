import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle{
  static TextStyle textStyle({double? size, FontWeight? fontWeight, Color? color}) {
    return GoogleFonts.acme(
      decoration: TextDecoration.none,
      color: color ?? Colors.white,
      fontSize: size ?? 20,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }
}