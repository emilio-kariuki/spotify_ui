// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Concert extends StatefulWidget {
  const Concert({Key? key}) : super(key: key);

  @override
  State<Concert> createState() => _ConcertState();
}

class _ConcertState extends State<Concert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(child:Text("Hello"))
    );
  }
}