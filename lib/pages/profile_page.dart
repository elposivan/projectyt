import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar ( title: Text("Profile page"), backgroundColor: Colors.blue),

      backgroundColor: Colors.green,
      body: Center(
        child: Text("Profile Page"),
      ),
    );
  }
}
