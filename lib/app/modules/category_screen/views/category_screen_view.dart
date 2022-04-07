import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant.dart';
import '../controllers/category_screen_controller.dart';
import 'component/category_item_widget.dart';

class CategoryScreenView extends GetView<CategoryScreenController> {
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
                "Your Category",
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
              flex: 1,
              child: Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: Color(0xFFECF0F3),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(42),
                        topRight: Radius.circular(42)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 35,
                        ),
                        CategoryWidget(
                          title1: "Science & Tech",
                          title2: "Business Event",
                          image1: "assets/icon/atom.svg",
                          image2: "assets/icon/graph.svg",
                          press1: () {
                            Get.toNamed('/event-screen');
                          },
                          press2: () {
                            Get.toNamed('/event-screen');
                          },
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CategoryWidget(
                          title1: "Music Concert",
                          title2: "Design Meetup",
                          image1: "assets/icon/Concert.svg",
                          image2: "assets/icon/design.svg",
                          press1: () {
                            Get.toNamed('/event-screen');
                          },
                          press2: () {
                            Get.toNamed('/event-screen');
                          },
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CategoryWidget(
                          title1: "Motivatinal Spech",
                          title2: "Educational Event",
                          image1: "assets/icon/spech.svg",
                          image2: "assets/icon/education.svg",
                          press1: () {
                            Get.toNamed('/event-screen');
                          },
                          press2: () {
                            Get.toNamed('/event-screen');
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ));
  }
}
