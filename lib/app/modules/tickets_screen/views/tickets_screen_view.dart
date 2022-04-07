import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_widget/ticket_widget.dart';
import '../../../../constant.dart';
import '../../common_widget/button_widget.dart';
import '../controllers/tickets_screen_controller.dart';

class TicketsScreenView extends GetView<TicketsScreenController> {
  const TicketsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColorBlack,
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
            InkWell(
               onTap: () {
                Get.toNamed('/profile');
              },
              child: Container(
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
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Tickets",
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
                  padding: const EdgeInsets.only(top: 20),
                  decoration: const BoxDecoration(
                    color: Color(0xFFECF0F3),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(42),
                        topRight: Radius.circular(42)),
                  ),
                  child: Stack(children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: TicketWidget(
                        width: 350,
                        height: 400,
                        isCornerRounded: true,
                        color: kPrimaryColorOrange,
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("Dribbble Meetup 2020",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 19,
                                      color: Colors.white)),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Date :",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 15,
                                              color: Colors.grey[300])),
                                      Text("26 Dec, Mon",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 15,
                                              color: Colors.white)),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Time :",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 15,
                                              color: Colors.grey[300])),
                                      Text("12:00 PM",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 15,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ]),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Ticket Type :",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 15,
                                              color: Colors.grey[300])),
                                      Text("Regular Ticket",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 15,
                                              color: Colors.white)),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Order :",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 15,
                                              color: Colors.grey[300])),
                                      Text("1234567",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 15,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ]),
                            const SizedBox(
                              height: 65,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Place :",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 15,
                                              color: Colors.grey[300])),
                                      Text("3120 Zinda Bazar, Sylhet",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 15,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ]),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              height: 90,
                              child: Image.asset(
                                "assets/images/barcode.png",
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 35,
                      left: 0,
                      right: 0,
                      child: Container(
                        margin: const EdgeInsets.only(left: 23, right: 20),
                        child: ButtonWidget(
                          backgroundColor: kPrimaryColorOrange,
                          borderColor: kPrimaryColorOrange,
                          press: () {
                            Get.toNamed('/tickets-screen');
                          },
                          color: kPrimaryColorWhite,
                          text: "TICKET BOOKED",
                          boxShadow: kPrimaryColorOrange.withOpacity(0.2),
                        ),
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
