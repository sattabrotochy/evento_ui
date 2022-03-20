import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant.dart';
import '../../common_widget/button_widget.dart';
import '../controllers/payment_screen_controller.dart';

class PaymentScreenView extends GetView<PaymentScreenController> {
  const PaymentScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColorBlack,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.black,
          leading:InkWell(
            onTap: (){
              Get.back();
            },
            child:  const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          actions: [
            Container(
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
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Payment",
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
                    color: Color(0xFFECF0F3),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(42),
                        topRight: Radius.circular(42)),
                  ),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          height: 151,
                          decoration: BoxDecoration(
                              color: kPrimaryColorOrange,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Bank Name",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Colors.white),
                                  ),
                                  const Image(
                                      image: AssetImage("assets/images/visa.png"))
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 23, right: 20),
                          child: Text(
                            "Card number",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontSize: 13,
                                color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 10,
                                  child: Container(
                                    height: Get.height / 16,
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(
                                              0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: TextFormField(
                                      obscureText: false,
                                      onChanged: (vale) {},
                                      validator: (value) {},
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        hintText: " 1234 6545 4654 5465",
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    height: Get.height / 16,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(
                                              0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Image(
                                      image: AssetImage("assets/images/visa.png"),
                                    ),
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 23, right: 20),
                          child: Text(
                            "Card Holder Name",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontSize: 13,
                                color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: Get.height / 16,
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: TextFormField(
                            obscureText: false,
                            onChanged: (vale) {},
                            validator: (value) {},
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              hintText: "Nayeem Azraf Chy",
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 23, right: 20),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "  Expire Date",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 13,
                                          color: Colors.black),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: Get.height / 16,
                                    width: 130,
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(
                                              0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: TextFormField(
                                      obscureText: false,
                                      onChanged: (vale) {},
                                      validator: (value) {},
                                      keyboardType: TextInputType.text,
                                      decoration: const InputDecoration(
                                        hintText: "10/12/2820",
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "CCV",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 13,
                                          color: Colors.black),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: Get.height / 16,
                                    width: 80,
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(
                                              0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: TextFormField(
                                      obscureText: false,
                                      onChanged: (vale) {},
                                      validator: (value) {},
                                      keyboardType: TextInputType.text,
                                      decoration: const InputDecoration(
                                        hintText: "1234",
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          margin: const EdgeInsets.only(left: 23, right: 20),
                          child: ButtonWidget(
                            backgroundColor: kPrimaryColorOrange,
                            borderColor: kPrimaryColorOrange,
                            press: () {},
                            color: kPrimaryColorWhite,
                            text: "CONFIRM & PAY",
                            boxShadow: kPrimaryColorOrange.withOpacity(0.2),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  )
                ),
              )
            ],
          ),
        ));
  }
}
