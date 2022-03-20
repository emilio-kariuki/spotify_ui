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
    Icon(Icons.add, size: 30,color:Colors.white),
    // Icon(Icons.notifications, size: 30,color:Colors.white),
    Icon(Icons.person, size: 30,color:Colors.white),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: kPurple,
        buttonBackgroundColor: Color.fromARGB(255, 17, 43, 18),
        animationDuration: Duration(milliseconds: 400),
        backgroundColor: Colors.transparent,
        index: index,
        height: 47,
        items: items,
        onTap: (newIndex) {
          setState(() {
            controller.animateToPage(newIndex,
                duration: Duration(microseconds: 500),
                curve: Curves.ease);
          });
        },
      ),
      
    );
  }
}