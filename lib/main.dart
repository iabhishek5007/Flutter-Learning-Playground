import 'package:flutter/material.dart';
import 'package:flutter_first/pages/home_page.dart';
import 'package:flutter_first/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      //for light theme
      // // Set the primary color to deep purple
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      //for dark theme
      darkTheme: ThemeData(brightness: Brightness.dark),
      // Set the initial route to "/home"
      initialRoute: "/login",
      // Define the routes for the app
      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage()
      },
    );
  }
}
