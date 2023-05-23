import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Class for MyTheme
class MyTheme {
  // Getter method for light theme
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
          // Set app bar color to white
          color: Colors.white,
          // Set app bar elevation to 0
          elevation: 0.0,
          // Set icon color to black
          iconTheme: IconThemeData(color: Colors.black),
          // Set title color to black
          titleTextStyle: TextStyle(color: Colors.black)));

  // Getter method for dark theme
  static ThemeData get darkTheme => ThemeData(brightness: Brightness.dark);
}
