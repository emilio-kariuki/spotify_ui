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
        // buttonBackgroundColor: Color.fromARGB(255, 17, 43, 18),
        // animationDuration: Duration(milliseconds: 400),
        // backgroundColor: Colors.transparent,
        // index: index,
        // height: 47,
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
            icon: Icon(Icons.shopping_bag),
            label: 'Shop',
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