import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_ui/constants/constants.dart';

class TextBuild extends StatelessWidget {
  final String content;
  final double size;
  const TextBuild({Key? key, required this.content, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: GoogleFonts.robotoCondensed(
        fontSize: size,
        color: kWhite,
      ),
    );
  }
}
