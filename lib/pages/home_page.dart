import 'package:flutter/material.dart';
import 'package:flutter_first/widgets/drawer.dart';

// This class represents the home page of the app
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar that displays the app name
      appBar: AppBar(
        title: const Text("My App"),
      ),
      // The main body of the home page, which is a centered container with a welcome message
      body: const Center(
        child: Text("Welcome To Flutter"),
      ),
      // A drawer that can be opened from the side to display extra options or information
      drawer: const MyDrawer(),
    );
  }
}
