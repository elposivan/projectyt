import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar ( title: Text("Home page"), backgroundColor: Colors.blue),
      backgroundColor: Colors.red,
      body: Center(

        child: Text("Home Page"),
      ),
    );
  }
}
