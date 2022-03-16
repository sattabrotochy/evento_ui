import 'package:carousel_slider/carousel_slider.dart';
import 'package:evento_ui/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/home_controller.dart';

class HomeTreadingWidget extends StatelessWidget {
  const HomeTreadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (logic) {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Trending Events",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: Get.width / 19,
                  ),
                ),
                Text(
                  "${logic.indexCount} / ${15}",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: Get.width / 22,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CarouselSlider.builder(
            itemCount: 15,


            options: CarouselOptions(
              viewportFraction: 1,
            ),
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
             //

              return InkWell(

                onTap: (){
                  logic.indexCountTrendingEvent(itemIndex);
                },
                child: Container(
                  height: 200,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 140,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZXZlbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 5),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Flames Music Concert 2020",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontSize: Get.width / 25,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "3120 Zinda Bazar, Sylhet",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.normal,
                                  fontSize: Get.width / 28,
                                  color: Colors.grey[400]),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 50,
                            width: 70,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                color: kPrimaryColorOrange,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                )
                            ),
                            child: Text("Going", style: GoogleFonts.poppins(
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                                fontSize: Get.width / 25,
                                color: Colors.white
                            ),),
                          ))
                    ],
                  ),
                ),
              );
            },
          )
        ],
      );
    });
  }
}
