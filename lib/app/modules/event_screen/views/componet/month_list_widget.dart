import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';

class MonthListWidget extends StatelessWidget {
  const MonthListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, int index) {
        return InkWell(
          onTap: () {
            Get.toNamed('/book-tickets-screen');
          },
          child: Container(
            height: 93,
            padding: const EdgeInsets.only(left: 10, right: 10),
            margin:
                const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  height: 76,
                  width: 64,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://media.istockphoto.com/photos/concert-crowd-picture-id627183716?b=1&k=20&m=627183716&s=170667a&w=0&h=1gMBKcpiasDBw6QQ_rtnfZXbrw8fmrsTFFL0CrhDqEs="),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        "Banned Music Syntaxive",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: Get.width / 22,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        "26 Dec Sunday at 2.00 PM",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal,
                            fontSize: Get.width / 29,
                            color: kPrimaryColorOrange),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        "3120 Zinda Bazar, Sylhet",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: Get.width / 29,
                            color: Colors.grey[400]),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}
