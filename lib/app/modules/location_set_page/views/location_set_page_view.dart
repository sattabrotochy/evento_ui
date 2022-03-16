import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant.dart';
import '../../common_widget/button_widget.dart';
import '../controllers/location_set_page_controller.dart';

class LocationSetPageView extends GetView<LocationSetPageController> {
  const LocationSetPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 20, left: 28, right: 28),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                bottom: Get.height/3,
                top: 0,
                child: Image.asset("assets/images/image6.png"),
              ),
              Positioned(
                bottom: Get.height/20,
                left: 0,
                right: 0,
                child: Column(
                  children: [


                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Set Your Location',
                        style: GoogleFonts.poppins(
                            fontSize: Get.width / 15,
                            fontWeight: FontWeight.bold,
                            color: ktextColors,
                            fontStyle: FontStyle.normal),
                      ),
                    ),

                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Lorem Ipsum has been the industry's standardummy text  ever since the 1500s, when an unknown printer tooka  galley of type and scrambled it to make a type.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontSize: Get.width / 30,
                            fontWeight: FontWeight.normal,
                            color: ktextColors,
                            fontStyle: FontStyle.normal),
                      ),
                    ),

                    const SizedBox(height: 30),
                    ButtonWidget(
                      backgroundColor: kPrimaryColorOrange,
                      borderColor: kPrimaryColorOrange,
                      press: () {
                        Get.offNamed('/home');
                      },
                      color: kPrimaryColorWhite,
                      text: "Turn on Your Location",
                      boxShadow: kPrimaryColorOrange.withOpacity(0.2),
                    ),
                    const SizedBox(height: 10),

                    Text("or",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 15
                    ),),
                    const SizedBox(height: 10),
                    ButtonWidget(
                      backgroundColor: kPrimaryColorBlack,
                      borderColor: kPrimaryColorBlack,
                      press: () {

                      },
                      color: kPrimaryColorWhite,
                      text: "Select City",
                      boxShadow: kPrimaryColorBlack.withOpacity(0.2),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
