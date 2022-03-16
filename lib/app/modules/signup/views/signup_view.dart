import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant.dart';
import '../../common_widget/button_widget.dart';
import '../../common_widget/custom_app_bar.dart';
import '../controllers/signup_controller.dart';
import 'component/sing_up_text_input_field_widget.dart';
import 'component/social media_widget.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.only(top: 20, left: 28, right: 28),
            child: Column(
              children: [
                const CustomAppbar(
                  title: "",
                ),

                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Evento',
                    style: GoogleFonts.poppins(
                        fontSize: Get.width / 10,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColorOrange,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Create an Account',
                    style: GoogleFonts.poppins(
                        fontSize: Get.width / 15,
                        fontWeight: FontWeight.bold,
                        color: ktextColors,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SocialMediaWidget(
                  fbPress: () {},
                  googlePress: () {},
                  applePress: () {},
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Or connect with your gmail',
                    style: GoogleFonts.poppins(
                        fontSize: Get.width / 29,
                        fontWeight: FontWeight.normal,
                        color: ktextColors,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                /// first name
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'First Name',
                    style: GoogleFonts.poppins(
                        fontSize: Get.width / 23,
                        fontWeight: FontWeight.w600,
                        color: ktextColors,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormFiledSingUpWidget(
                  formFieldValidator: (value) {},
                  obscure: false,
                  onchange: (value) {},
                  textInputType: TextInputType.text,
                  hintText: "First Name",
                ),
                const SizedBox(height: 15),

                /// last name
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Last Name',
                    style: GoogleFonts.poppins(
                        fontSize: Get.width / 23,
                        fontWeight: FontWeight.w600,
                        color: ktextColors,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormFiledSingUpWidget(
                  formFieldValidator: (value) {},
                  obscure: false,
                  onchange: (value) {},
                  textInputType: TextInputType.text,
                  hintText: "Last Name",
                ),
                const SizedBox(height: 15),

                ///email
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter Email',
                    style: GoogleFonts.poppins(
                        fontSize: Get.width / 23,
                        fontWeight: FontWeight.w600,
                        color: ktextColors,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                const SizedBox(height: 5),

                TextFormFiledSingUpWidget(
                  formFieldValidator: (value) {},
                  obscure: false,
                  onchange: (value) {},
                  textInputType: TextInputType.emailAddress,
                  hintText: "Enter Email",
                ),
                const SizedBox(height: 15),

                ///password
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter password',
                    style: GoogleFonts.poppins(
                        fontSize: Get.width / 23,
                        fontWeight: FontWeight.w600,
                        color: ktextColors,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormFiledSingUpWidget(
                  formFieldValidator: (value) {},
                  obscure: true,
                  onchange: (value) {},
                  textInputType: TextInputType.text,
                  hintText: "Enter password",
                ),

                const SizedBox(height: 20),
                ButtonWidget(
                  backgroundColor: kPrimaryColorOrange,
                  borderColor: kPrimaryColorOrange,
                  press: () {},
                  color: kPrimaryColorWhite,
                  text: "Sign Up",
                  boxShadow: kPrimaryColorOrange.withOpacity(0.2),
                ),
                const SizedBox(
                  height: 20,
                ),

                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Already have an account ?",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Colors.black)),
                      InkWell(
                        onTap: () {
                          Get.offNamed('/login');
                        },
                        child: Text(" Log in",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                                color: kPrimaryColorOrange)),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
