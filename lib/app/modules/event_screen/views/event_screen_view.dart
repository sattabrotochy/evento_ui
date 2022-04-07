// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../constant.dart';
import '../controllers/event_screen_controller.dart';
import 'componet/event_bar_widget.dart';
import 'componet/month_list_widget.dart';
import 'componet/recently_list_widget.dart';
import 'componet/week_list_widget.dart';

class EventScreenView extends GetView<EventScreenController> {
  const EventScreenView({Key? key}) : super(key: key);

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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(42),
                    topRight: Radius.circular(42)),
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
                    child: Obx(() => controller.recent == true
                        ? const RecentlyListWidget()
                        : controller.thisWeek == true
                            ? const WeekListWidget()
                            : controller.thisMonth == true
                                ? const MonthListWidget()
                                : Container()),
                  )),
                ],
              ),
            ))
          ],
        ));
  }
}
