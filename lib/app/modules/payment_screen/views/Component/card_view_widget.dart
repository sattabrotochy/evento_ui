import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';

class CardViewWidget extends StatelessWidget {
  const CardViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      padding: const EdgeInsets.only(left: 15, right: 15),
      height: 151,
      decoration: BoxDecoration(
          color: kPrimaryColorOrange, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Bank Name",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Colors.white),
              ),
              const Image(image: AssetImage("assets/images/visa.png"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "****",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Colors.white),
              ),
              Text(
                "****",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Colors.white),
              ),
              Text(
                "****",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Colors.white),
              ),
              Text(
                "1234",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("CARD HOLDER NAME",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 10,
                          color: Colors.white)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Syntaxive.tech",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 11,
                          color: Colors.white)),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Expire Date",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 10,
                          color: Colors.white)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("05 / 02 / 2022",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 11,
                          color: Colors.white)),
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
