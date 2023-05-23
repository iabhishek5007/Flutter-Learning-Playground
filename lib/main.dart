import 'package:flutter/material.dart';
import 'package:flutter_first/pages/home_page.dart';
import 'package:flutter_first/pages/login_page.dart';
import 'package:flutter_first/utils/routes.dart';
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
      debugShowCheckedModeBanner: false,
      // Set the initial route to "/home"
      initialRoute: MyRoutes.homeRoute,
      // Define the routes for the app
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
