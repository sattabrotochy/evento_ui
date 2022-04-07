// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant.dart';
import '../controllers/profile_controller.dart';
import 'component/category_list_profile_widget.dart';
import 'component/event_follower_widget.dart';
import 'component/gallery_List_Profile_widget.dart';
import 'component/header_profile_widget.dart';
import 'component/jobs_list_profile.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          const HeaderProfileWidget(),
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
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const EventFollowerWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: const Divider(
                        thickness: 1,
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(
                          left: 40,
                          right: 40,
                          top: 20,
                        ),
                        child: Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.categoryGellayJobChnageButton(1);
                                },
                                child: SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: SvgPicture.asset(
                                    "assets/icon/category.svg",
                                    color: controller.iconCategory == true
                                        ? kPrimaryColorOrange
                                        : ktextColors,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.categoryGellayJobChnageButton(2);
                                },
                                child: SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: SvgPicture.asset(
                                      "assets/icon/Gallery.svg",
                                      color: controller.iconGallery == true
                                          ? kPrimaryColorOrange
                                          : ktextColors),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.categoryGellayJobChnageButton(3);
                                },
                                child: SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: SvgPicture.asset(
                                      "assets/icon/jobs.svg",
                                      color: controller.iconJobs == true
                                          ? kPrimaryColorOrange
                                          : ktextColors),
                                ),
                              )
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: const Divider(
                        thickness: 1,
                      ),
                    ),
                    Obx(() => controller.iconCategory == true
                        ? const CategoryListProfileWidget()
                        : controller.iconGallery == true
                            ? GalleryListProfileWidget(
                                images: controller.images,
                              )
                            : controller.iconJobs == true
                                ? const JobsListProfileWidget()
                                : Container()),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
