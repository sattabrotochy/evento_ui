import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../constant.dart';
import '../../common_widget/button_widget.dart';
import '../controllers/book_tickets_screen_controller.dart';
import 'component/event_details_section.dart';
import 'component/going_scrtion_&_price.dart';
import 'component/hosted_by_section.dart';

class BookTicketsScreenView extends GetView<BookTicketsScreenController> {
  const BookTicketsScreenView({Key? key}) : super(key: key);

  final length = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        /// image app bar
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
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: InkWell(
                        onTap: ()async {
                         await FlutterShare.share(
                              title: 'Example share',
                              text: 'Example share text',
                              linkUrl: 'https://flutter.dev/',
                              chooserTitle: 'Example Chooser Title');
                        },
                        child: const Icon(
                          Icons.share_rounded,
                          color: Colors.white,
                        ),
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
                    padding: const EdgeInsets.only(top: 20),
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
                          /// hosted/ follow by section widget here
                          const HostedBySectionTicketBooking(),
                          const SizedBox(
                            height: 21,
                          ),
                          Container(
                            height: 1,
                            margin: const EdgeInsets.only(left: 35, right: 35),
                            color: Colors.grey[300],
                          ),

                          /// events details section widget here
                          const EvenDetailsScetionWidget(),

                          /// going  section users list and price  widget here
                          GoingSectionAndPriceWidget(
                            length: length,
                          ),
                          const SizedBox(
                            height: 21,
                          ),

                          /// Book Ticket section button  widget here just pass button name parameter,color and onPressed function
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
