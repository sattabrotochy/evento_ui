import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';
import '../../controllers/event_screen_controller.dart';

class EventBarWidget extends StatelessWidget {
  const EventBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EventScreenController>(builder: (logic) {
      return Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                logic.eventBar(1);
                logic.setThisMonthFalse();
                logic.setThisWeekFalse();
              },
              child: Container(
                height: Get.height / 22,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: logic.recent == true ? Colors.white : kPrimaryColorOrange,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  "Recently",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 13,
                      color: logic.recent == false ? Colors.white : kPrimaryColorOrange),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                logic.eventBar(2);
                logic.setRecentFalse();
                logic.setThisMonthFalse();
              },
              child: Container(
                height: Get.height / 22,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: logic.thisWeek == true ? Colors.white : kPrimaryColorOrange,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  "This Week",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 13,
                      color: logic.thisWeek == false ? Colors.white : kPrimaryColorOrange),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                logic.eventBar(3);
                logic.setRecentFalse();
                logic.setThisWeekFalse();
              },
              child: Container(
                height: Get.height / 22,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: logic.thisMonth == true ? Colors.white : kPrimaryColorOrange,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  "This Month",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 13,
                      color: logic.thisMonth == false ? Colors.white : kPrimaryColorOrange),
                ),
              ),
            )
          ],
        ),
      );
    });

  }
}
