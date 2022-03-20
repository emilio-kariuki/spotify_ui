// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import "package:flutter/material.dart";
import 'package:spotify_ui/constants/constants.dart';
import 'package:spotify_ui/screens/concerts.dart';
import 'package:spotify_ui/screens/discover.dart';
import 'package:spotify_ui/screens/library.dart';
import 'package:spotify_ui/screens/search.dart';

class Homme extends StatefulWidget {
  const Homme({Key? key}) : super(key: key);

  @override
  State<Homme> createState() => _HommeState();
}

class _HommeState extends State<Homme> {
  PageController controller = PageController(initialPage: 0);
  int index = 0;
  final items = [
    Icon(Icons.map, size: 30, color: Colors.white),
    Icon(Icons.layers, size: 30, color: Colors.white),
    Icon(Icons.add, color: Colors.white),
    // Icon(Icons.notifications, size: 30,color:Colors.white),
    Icon(Icons.person, color: Colors.white),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: PageView(
          controller: controller,
          onPageChanged: (newIndex) {
            setState(() {
              index = newIndex;
            });
          },
          children: [
            Concert(),
            Discover(),
            Search(),
            // Notifications(),
            Library()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        type: BottomNavigationBarType.fixed,
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
                duration: Duration(microseconds: 300), curve: Curves.ease);
          });
        },
      ),
    );
  }
}
