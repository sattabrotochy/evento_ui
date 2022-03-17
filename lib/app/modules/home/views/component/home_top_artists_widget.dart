import 'package:evento_ui/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTopArtistsWidget extends StatelessWidget {
  const HomeTopArtistsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Top Artists",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: Get.width / 19,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          height: 130,
          child: ListView.builder(
            itemCount: 15,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, int index) {
              return Container(
                height: 125,
                width: 86,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Julia Ana",
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: Get.width / 29,
                      ),
                    ),
                    Text(
                      "DJ Singer",
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                        color: kPrimaryColorOrange,
                        fontSize: Get.width / 35,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
