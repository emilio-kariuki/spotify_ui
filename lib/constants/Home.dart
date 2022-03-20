// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import "package:flutter/material.dart";
import 'package:spotify_ui/constants/constants.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController controller = PageController(initialPage: 0);
  int index = 0;
  final items = [
    Icon(Icons.map, size: 30,color:Colors.white),
    Icon(Icons.layers, size: 30,color:Colors.white),
    Icon(Icons.add, color:Colors.white),
    // Icon(Icons.notifications, size: 30,color:Colors.white),
    Icon(Icons.person,color:Colors.white),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
    backgroundColor: kPurple,
        
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'your Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Concert',
          ),
        ],
        onTap: (newIndex) {
          setState(() {
            controller.animateToPage(newIndex,
                duration: Duration(microseconds: 300),
                curve: Curves.ease);
          });
        },
      ),
      
    );
  }
}