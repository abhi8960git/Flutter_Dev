import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyTheme{
  static ThemeData lightTheme(BuildContext cont) => ThemeData(
 
      primarySwatch: Colors.yellow,
      scaffoldBackgroundColor: Color(0xFFFFECD1),
      fontFamily: GoogleFonts.audiowide().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 22),
        centerTitle: true
      ),
    );
  
}