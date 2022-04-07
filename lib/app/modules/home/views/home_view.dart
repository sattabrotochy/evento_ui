import 'package:evento_ui/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'component/events_for_you_widget.dart';
import 'component/home_top_artists_widget.dart';
import 'component/home_trending_widget.dart';
import '../controllers/home_controller.dart';
import 'component/home_header_widget.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColors,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.menu_rounded,
          color: Colors.white,
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
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ///home page header here
            HomeHeaderWidget(
              categoryPage: () {
                Get.toNamed('/category-screen');
              },
            ),
            const SizedBox(
              height: 20,
            ),

            /// TreadingWidget list here
            const HomeTreadingWidget(),
            const SizedBox(
              height: 20,
            ),
            const HomeTopArtistsWidget(),
            const SizedBox(
              height: 20,
            ),

            /// event for you widget here
            const EventForYouWidget()
          ],
        ),
      )),
    );
  }
}
