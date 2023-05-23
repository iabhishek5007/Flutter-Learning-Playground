import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// This is a custom navigation drawer widget
class MyDrawer extends StatelessWidget {
  // Constructor for the widget
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    const imageUrl = "https://avatars.githubusercontent.com/u/51712696?v=4";
    // The drawer widget with a container and a list view
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            // Header for the drawer with user details
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Abhishek Kumar"),
                  accountEmail: Text("abhi25@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            // List tile for the home page
            ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                )),
            // List tile for the profile page
            ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                )),
            // List tile for the email page
            ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text(
                  "Email",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
