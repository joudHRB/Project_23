// ignore_for_file: prefer_const_constructors

import 'package:assistant_undergraduate/page/annonucements.dart';
import 'package:assistant_undergraduate/page/chat_page.dart';
import 'package:assistant_undergraduate/page/course_page.dart';
import 'package:assistant_undergraduate/page/instructor_information.dart';
import 'package:assistant_undergraduate/page/search_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // ignore: prefer_final_fields
  List<Widget> _widgetOptions = <Widget>[
    AnnonucementsPage(),
    InstructorInformationPage(),
    SearchPage(),
    CoursePage(),
    ChatPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // int _currentIndex = 0;
    return Scaffold(
    
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30), title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 30), title: Text('')),

            BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 30), title: Text('')),

            BottomNavigationBarItem(
                icon: Icon(Icons.menu, size: 30), title: Text('')),

            BottomNavigationBarItem(
                icon: Icon(Icons.markunread, size: 30), title: Text('')),

            // BottomNavigationBarItem(
            //     icon: Icon(Icons.messenger, size: 30), title: Text('')),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.settings, size: 30), title: Text('')),
          ],
          currentIndex: _currentIndex,
          selectedItemColor: Colors.cyan[900],
          unselectedItemColor: Colors.grey,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
        ),

        // ignore: prefer_const_literals_to_create_immutables
        body: _widgetOptions[_currentIndex]);
  }
}
