import 'package:flutter/material.dart';
import 'package:flutter_first/pages/home_page.dart';
import 'package:flutter_first/pages/login_page.dart';

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
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      //for dark theme
      darkTheme: ThemeData(brightness: Brightness.dark),
      // Set the initial route to "/home"
      initialRoute: "/home",
      // Define the routes for the app
      routes: {
        "/": (context) => const HomePage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage()
      },
    );
  }
}
