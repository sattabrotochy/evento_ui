import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Callback press;
  final Color color;
  final Color backgroundColor;
  final Color borderColor;
  final Color boxShadow;
  const ButtonWidget(
      {Key? key,
      required this.text,
      required this.press,
      required this.color,
      required this.backgroundColor,
      required this.borderColor,
      required this.boxShadow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        height: Get.height / 16,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 1,
            color: borderColor,
          ),
          boxShadow: [
            BoxShadow(
              color: boxShadow,
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontSize: Get.width / 20,
              color: color),
        ),
      ),
    );
  }
}
