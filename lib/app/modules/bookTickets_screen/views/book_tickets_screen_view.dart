import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant.dart';
import '../../common_widget/button_widget.dart';
import '../controllers/book_tickets_screen_controller.dart';

class BookTicketsScreenView extends GetView<BookTicketsScreenController> {
  const BookTicketsScreenView({Key? key}) : super(key: key);

  final length = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.maxFinite,
          height: 300,
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://images.unsplash.com/photo-1545224144-b38cd309ef69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHJvY2slMjBiYW5kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
            ),
          )),
        ),
        Positioned(
          top: Get.height / 15,
          left: 20,
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
            child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          margin: EdgeInsets.only(top: Get.height / 4),
          decoration: const BoxDecoration(
            color: kPrimaryColorOrange,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(42), topRight: Radius.circular(42)),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "26",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: kPrimaryColorOrange),
                          ),
                          Text(
                            "Dec",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                                fontSize: 15,
                                color: kPrimaryColorOrange),
                          ),
                        ],
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
                            "Fury On Fire Concert",
                            style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 16),
                          child: Text(
                            "Fury On Fire Concert",
                            style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    )),
                    const SizedBox(
                      height: 30,
                      width: 30,
                      child: Icon(
                        Icons.share_rounded,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Expanded(
                child: Container(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFBFBFB),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42)),
                    ),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
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
                                    InkWell(
                                      onTap: () {
                                        Get.toNamed('/profile');
                                      },
                                      child: Container(
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
                          ),
                          const SizedBox(
                            height: 21,
                          ),
                          Container(
                            height: 1,
                            margin: const EdgeInsets.only(left: 35, right: 35),
                            color: Colors.grey[300],
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
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
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
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
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
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
                                        offset: const Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child:
                                      SvgPicture.asset("assets/icon/watch.svg"),
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
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
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
                                        offset: const Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child:
                                      SvgPicture.asset("assets/icon/watch.svg"),
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
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 120,
                                      margin: const EdgeInsets.only(
                                          left: 15, right: 2),
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
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            kPrimaryColorOrange,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        border: Border.all(
                                                            color: Colors.white,
                                                            width: 1),
                                                      ),
                                                      child: Text(
                                                          "${length - index}+",
                                                          style: GoogleFonts.poppins(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                              fontSize:
                                                                  Get.width /
                                                                      34,
                                                              color: Colors
                                                                  .white)),
                                                    )
                                                  : Container(
                                                      height: 35,
                                                      width: 35,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        border: Border.all(
                                                            color: Colors.white,
                                                            width: 1),
                                                        image:
                                                            const DecorationImage(
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
                                      color:
                                          kPrimaryColorOrange.withOpacity(0.2),
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
                          ),
                          const SizedBox(
                            height: 21,
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 20, bottom: 20),
                            child: ButtonWidget(
                              backgroundColor: kPrimaryColorOrange,
                              borderColor: kPrimaryColorOrange,
                              press: () {
                                Get.toNamed('/payment-screen');
                              },
                              color: kPrimaryColorWhite,
                              text: "BOOK TICKETS",
                              boxShadow: kPrimaryColorOrange.withOpacity(0.2),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ))
      ],
    ));
  }
}
