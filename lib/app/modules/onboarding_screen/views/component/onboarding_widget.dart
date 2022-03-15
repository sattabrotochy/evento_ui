import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

Widget buildImage(String path) => Center(child: Image.asset(path, width: 350));

DotsDecorator getDotDecoration() => DotsDecorator(
      color: const Color(0xFFBDBDBD),
      activeColor: Colors.orange,
      size: const Size(10, 10),
      activeSize: const Size(22, 10),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    );

PageDecoration getPageDecoration() => PageDecoration(
      titleTextStyle:
          const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      bodyTextStyle: const TextStyle(fontSize: 13),
      bodyPadding: const EdgeInsets.all(16).copyWith(bottom: 0),
      imagePadding: const EdgeInsets.all(24),
      pageColor: Colors.white,
    );
