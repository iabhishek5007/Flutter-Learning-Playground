import 'package:flutter/material.dart';

import '../utils/routes.dart';

// Define a LoginPage class that extends StatelessWidget
class LoginPage extends StatefulWidget {
  // Define a constructor that calls the constructor of the parent class with a named parameter
  const LoginPage({Key? key}) : super(key: key);

  /// * Explanation:
  ///    -  @override  is a Dart annotation that indicates that this method overrides a method from a superclass or interface.
  ///   -  State<LoginPage>  specifies the type of state object that will be created for the LoginPage widget.
  ///    -  createState()  is a method that creates and returns a new state object for the widget.
  ///    -  =>  is a shorthand notation that replaces the  return  keyword.
  ///    -  _LoginPageState()  is the class that represents the state of the LoginPage widget.
  ///    The rewritten code enclosed within

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  // Override the build method to build the widget tree for this LoginPage
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      //// Enclosing the `SingleChildScrollView` inside a `Container` to provide a clear boundary
      child: SingleChildScrollView(
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
            Text(
              "Welcome $name",
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            // Add some spacing
            const SizedBox(
              height: 20,
            ),
            // Add the login form inputs and submit button
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                children: [
                  // username input
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter UserName",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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
                  /**
                   * This code uses an InkWell widget to create a clickable button with text that changes to an icon when clicked.
                   * The AnimatedContainer animates changes to the button's width and border radius when clicked.
                   */
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      // waits for 1 second
                      await Future.delayed(const Duration(seconds: 1));
                      // navigates to home
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      // ternary operator to change width based on changeButton value
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          // shape:
                          //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                          borderRadius:
                              // ternary operator to change border radius based on changeButton value
                              BorderRadius.circular(changeButton ? 50 : 8)),
                      // ternary operator to change child based on changeButton value
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              "login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                    ),
                  )
                  //submit button
                  // ElevatedButton(
                  //   onPressed: () {
                  //     //// Navigate to the home screen using the named route
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   style:
                  //       TextButton.styleFrom(minimumSize: const Size(150, 50)),
                  //   child: const Text("Login"),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
