// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';

class GoingSectionAndPriceWidget extends StatelessWidget {
  final length;
  const GoingSectionAndPriceWidget({Key? key, this.length}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 120,
                margin: const EdgeInsets.only(left: 15, right: 2),
                child: Stack(
                  children: [
                    ...List.generate(
                      length <= 3 ? length : 5,
                      (index) => Positioned(
                        left: index * 20,
                        child: index > 3
                            ? Container(
                                height: 35,
                                width: 35,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: kPrimaryColorOrange,
                                  borderRadius: BorderRadius.circular(20),
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                ),
                                child: Text("${length - index}+",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: Get.width / 34,
                                        color: Colors.white)),
                              )
                            : Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Going",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  fontStyle: FontStyle.normal,
                  color: ktextColors,
                ),
              )
            ],
          ),
          Container(
            height: 40,
            width: 86,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: kPrimaryColorOrange.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5)),
            child: Text(
              "\$ 150",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 19,
                fontStyle: FontStyle.normal,
                color: kPrimaryColorOrange,
              ),
            ),
          )
        ],
      ),
    );
  }
}
