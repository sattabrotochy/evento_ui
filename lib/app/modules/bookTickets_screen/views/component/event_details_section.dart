import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';

class EvenDetailsScetionWidget extends StatelessWidget {
  const EvenDetailsScetionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Text(
            "Event Details",
            style: GoogleFonts.poppins(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 19,
                color: ktextColors),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Text(
            "This paper presents the theory of User Experience best practices in software product lines. The used to derive the best practices is.,",
            style: GoogleFonts.poppins(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 12,
                height: 2.0,
                color: ktextColors),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            children: [
              Container(
                height: 41,
                width: 41,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: SvgPicture.asset("assets/icon/watch.svg"),
              ),
              const SizedBox(
                width: 14,
              ),
              Expanded(
                  child: Column(
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Mon, 26 December, 2020",
                        style: GoogleFonts.poppins(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: ktextColors),
                      )),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "12 PM to 4PM ",
                        style: GoogleFonts.poppins(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.grey[400]),
                      )),
                ],
              ))
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            children: [
              Container(
                height: 41,
                width: 41,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: SvgPicture.asset("assets/icon/watch.svg"),
              ),
              const SizedBox(
                width: 14,
              ),
              Expanded(
                  child: Column(
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Mon, 26 December, 2020",
                        style: GoogleFonts.poppins(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: ktextColors),
                      )),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "12 PM to 4PM ",
                        style: GoogleFonts.poppins(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.grey[400]),
                      )),
                ],
              ))
            ],
          ),
        ),
      ],
    );
  }
}
