import 'package:flutter/material.dart';

import 'package:projectyt/pages/home_page.dart';
import 'package:projectyt/pages/profile_page.dart';
import 'package:projectyt/pages/settings_page.dart';

class FirstPage extends StatefulWidget{
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  //this keeps track of the current page to display
  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    HomePage(),

    ProfilePage(),

    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Basic page"), backgroundColor: Colors.blue,),

      body: _pages[_selectedIndex],
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
                  Icons.favorite,
                  size: 48,
                ),
            ),

            //home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/settingspage');
                }
            ),

            ListTile(
                leading: Icon(Icons.person),
                title: Text("P R O F I L E"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/profilepage');
                }
            ),
          ]
        )
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          //home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ]
      ),
    );
  }
}
