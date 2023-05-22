import 'package:flutter/material.dart';

// Define a LoginPage class that extends StatelessWidget
class LoginPage extends StatelessWidget {
  // Define a constructor that calls the constructor of the parent class with a named parameter
  const LoginPage({Key? key}) : super(key: key);

  // Override the build method to build the widget tree for this LoginPage
  @override
  Widget build(BuildContext context) {
    // Return a Center widget that displays a Text widget with a message indicating that this is the login page
    return const Center(
      child: Text(
        "Login Page",
        style: TextStyle(
          fontSize: 20,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
