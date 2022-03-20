import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant.dart';
import '../controllers/event_screen_controller.dart';
import 'componet/event_bar_widget.dart';

class EventScreenView extends GetView<EventScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.black,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          actions: [
            Container(
              height: 55,
              margin: const EdgeInsets.only(right: 20, top: 22),
              width: 55,
              child: Stack(
                children: [
                  Container(
                    height: 50,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: const DecorationImage(
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                      bottom: 7,
                      left: 3,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: kPrimaryColorOrange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                "Choose  \n"
                "Your Event",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    fontSize: Get.width / 15,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
                child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: kPrimaryColorOrange,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(42), topRight: Radius.circular(42)),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  const EventBarWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: Container(
                        height: double.maxFinite,
                        width: double.maxFinite,
                        padding: const EdgeInsets.only(top: 30),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(42),
                            topRight: Radius.circular(42),
                          ),
                        ),
                        child: ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, int index) {
                            return InkWell(
                              onTap: (){
                                Get.toNamed('/book-tickets-screen');
                              },
                              child: Container(
                                height: 93,
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10,top: 10),
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
                        ),
                      ))
                ],
              ),
            ))
          ],
        ));
  }
}
