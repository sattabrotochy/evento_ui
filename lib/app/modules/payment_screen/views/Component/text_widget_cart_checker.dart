// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidgetCartChecker extends StatelessWidget {
  final textTitele;
  const TextWidgetCartChecker({Key? key, required this.textTitele})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(right: 20),
      child: Text(
        textTitele,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 13,
            color: Colors.black),
      ),
    );
  }
}
