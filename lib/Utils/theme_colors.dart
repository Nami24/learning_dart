import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColor {

  static ThemeData lightTheme = ThemeData(
        brightness: Brightness.light,
        textTheme: TextTheme(
          headline1: GoogleFonts.montserrat(fontSize: 28.0, color: Colors.black, fontWeight: FontWeight.bold,),
          headline2: GoogleFonts.montserrat(fontSize: 24.0, color: Colors.black, fontWeight: FontWeight.w700,),
          headline3: GoogleFonts.montserrat(fontSize: 24.0, color: Colors.black, fontWeight: FontWeight.w700,),
          headline4: GoogleFonts.poppins(fontSize: 14.0, color: Colors.black,),
          headline5: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.bold,),
          subtitle2: GoogleFonts.poppins(color: Colors.black87,),
          bodyText1: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black,),
          bodyText2: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),

        ),
        );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
     textTheme: TextTheme(
          headline1: GoogleFonts.montserrat(fontSize: 28.0, color: Colors.white10, fontWeight: FontWeight.bold,),
          headline2: GoogleFonts.montserrat(fontSize: 24.0, color: Colors.white10, fontWeight: FontWeight.w700,),
          headline3: GoogleFonts.poppins(fontSize: 24.0, color: Colors.white10, fontWeight: FontWeight.w700,),
          headline4: GoogleFonts.poppins(fontSize: 14.0, color: Colors.white10,),
          headline5: GoogleFonts.montserrat(fontSize: 14.0, color: Colors.white70,),
          subtitle2: GoogleFonts.poppins(color: Colors.white60,),
          bodyText1: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white,),
          bodyText2: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white,),

        ),
        );
}