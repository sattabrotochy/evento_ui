import 'package:evento_ui/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EventForYouWidget extends StatelessWidget {
  const EventForYouWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            "Events For You",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, int index) {
            return InkWell(
              onTap: () {
                Get.toNamed('/book-tickets-screen');
              },
              child: Container(
                height: 93,
                padding: const EdgeInsets.only(left: 10, right: 10),
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
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
                                  "https://images.unsplash.com/photo-1459749411175-04bf5292ceea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGV2ZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
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
                            "Banned Music Concert",
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
        )
      ],
    );
  }
}
