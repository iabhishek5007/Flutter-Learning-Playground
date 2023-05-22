import 'package:flutter/material.dart';

// Define a LoginPage class that extends StatelessWidget
class LoginPage extends StatelessWidget {
  // Define a constructor that calls the constructor of the parent class with a named parameter
  const LoginPage({Key? key}) : super(key: key);

  // Override the build method to build the widget tree for this LoginPage
// This method builds the login screen UI
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          // Display the login image
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          // Add some spacing
          const SizedBox(
            height: 20,
          ),
          // Display the welcome text
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          // Add some spacing
          const SizedBox(
            height: 20,
          ),
          // Add the login form inputs and submit button
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
            child: Column(
              children: [
                // username input
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter UserName",
                    labelText: "Username",
                  ),
                ),
                // password input
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                // Add some spacing
                const SizedBox(
                  height: 20,
                ),
                //submit button
                ElevatedButton(
                  onPressed: () {
                    print("Logged In");
                  },
                  style: TextButton.styleFrom(),
                  child: const Text("Login"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
