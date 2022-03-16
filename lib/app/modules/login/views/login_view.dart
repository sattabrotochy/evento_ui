import 'package:evento_ui/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widget/button_widget.dart';
import '../controllers/login_controller.dart';
import 'comopnent/text_input_widget.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              margin: const EdgeInsets.only(top: 20, left: 28, right: 28),
              child: Column(
                children: [
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
                  Container(
                    height: Get.height / 3.5,
                    width: double.maxFinite,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/image5.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Welcome Back',
                      style: GoogleFonts.poppins(
                          fontSize: Get.width / 15,
                          fontWeight: FontWeight.bold,
                          color: ktextColors,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Enter Email',
                      style: GoogleFonts.poppins(
                          fontSize: Get.width / 22,
                          fontWeight: FontWeight.w600,
                          color: ktextColors,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormFiledWidget(
                    formFieldValidator: (value) {},
                    obscure: false,
                    onchange: (value) {},
                    textInputType: TextInputType.emailAddress,
                    hintText: "email",
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Enter password',
                      style: GoogleFonts.poppins(
                          fontSize: Get.width / 22,
                          fontWeight: FontWeight.w600,
                          color: ktextColors,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormFiledWidget(
                    formFieldValidator: (value) {},
                    obscure: false,
                    onchange: (value) {},
                    textInputType: TextInputType.emailAddress,
                    hintText: "******",
                  ),
                  const SizedBox(height: 20),
                  ButtonWidget(
                    backgroundColor: kPrimaryColorOrange,
                    borderColor: kPrimaryColorOrange,
                    press: () {
                      Get.offNamed('/location-set-page');
                    },
                    color: kPrimaryColorWhite,
                    text: "Login",
                    boxShadow: kPrimaryColorOrange.withOpacity(0.2),
                  ),
                  const SizedBox(height: 20),
                  ButtonWidget(
                    backgroundColor: kPrimaryColorBlack,
                    borderColor: kPrimaryColorBlack,
                    press: () {
                      Get.toNamed('/signup');
                    },
                    color: kPrimaryColorWhite,
                    text: "SignUp",
                    boxShadow: kPrimaryColorBlack.withOpacity(0.2),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text("Forgot password?"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
