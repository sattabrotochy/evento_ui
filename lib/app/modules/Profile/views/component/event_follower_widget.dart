import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';

class EventFollowerWidget extends StatelessWidget {
  const EventFollowerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      /// total events
      Column(
        children: [
          Text(
            "12",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                color: ktextColors,
                fontSize: 26),
          ),
          Text(
            "Events",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                color: kPrimaryColorOrange,
                fontSize: 14),
          ),
        ],
      ),
      Column(
        children: [
          Text(
            "10k",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                color: ktextColors,
                fontSize: 26),
          ),
          Text(
            "Followers",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                color: kPrimaryColorOrange,
                fontSize: 14),
          ),
        ],
      ),
      Column(
        children: [
          Text(
            "220",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                color: ktextColors,
                fontSize: 26),
          ),
          Text(
            "Following",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                color: kPrimaryColorOrange,
                fontSize: 14),
          ),
        ],
      ),
    ]);
  }
}
