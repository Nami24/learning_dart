import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColor {

  static ThemeData lightTheme = ThemeData(
        brightness: Brightness.light,
        textTheme: TextTheme(
          headline5: GoogleFonts.montserrat(
            color: Colors.black87,
          ),
          subtitle2: GoogleFonts.poppins(
            color: Colors.black87,
        ),
        ),
        );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
     textTheme: TextTheme(
          headline5: GoogleFonts.montserrat(
            color: Colors.white70,
          ),
          subtitle2: GoogleFonts.poppins(
            color: Colors.white60,
        ),
        ),
        );
}