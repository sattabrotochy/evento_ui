// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextInputWidgets extends StatelessWidget {
  final double height;
  final double width;
  final hintText;
  final TextInputType textInputType;
  final FormFieldValidator formFieldValidator;
  final Function(dynamic value) onchange;
  final bool obscure;
  const TextInputWidgets(
      {Key? key,
      this.hintText,
      required this.textInputType,
      required this.formFieldValidator,
      required this.onchange,
      required this.obscure, required this.height, required this.width, TextInputType? keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / height,
      width: width,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        obscureText: obscure,
        onChanged: onchange,
        validator: formFieldValidator,
        keyboardType: TextInputType.text,
        decoration:  InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
