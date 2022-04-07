import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';

class WeekListWidget extends StatelessWidget {
  const WeekListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                              "https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZXZlbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
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
                        "Banned Music Week",
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
