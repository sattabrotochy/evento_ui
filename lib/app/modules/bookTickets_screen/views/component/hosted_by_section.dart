import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';

class HostedBySectionTicketBooking extends StatelessWidget {
  const HostedBySectionTicketBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Get.toNamed('/profile');
            },
            child: Container(
              height: 58,
              width: 58,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1619378881082-f97e57e1f20a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fHJvY2slMjBtdXNpYyUyMGdpcmx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                      fit: BoxFit.cover)),
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 16),
                child: Text(
                  "Hosted By",
                  style: GoogleFonts.poppins(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: ktextColors),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 16),
                child: Text(
                  "Dribbble Community",
                  style: GoogleFonts.poppins(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color(0xFF9C9C9C)),
                ),
              ),
            ],
          )),
          Container(
            height: 25,
            width: 53,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: kPrimaryColorOrange,
                borderRadius: BorderRadius.circular(5)),
            child: Text(
              "Follow",
              style: GoogleFonts.poppins(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
