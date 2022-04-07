import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../constant.dart';
import '../controllers/payment_screen_controller.dart';
import 'Component/card_check_widget.dart';
import 'Component/card_view_widget.dart';

class PaymentScreenView extends GetView<PaymentScreenController> {
  const PaymentScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColorBlack,
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
                        children: const [
                          SizedBox(
                            height: 40,
                          ),
                          CardViewWidget(),
                          SizedBox(
                            height: 20,
                          ),
                          CardCheckWidget(),
                          SizedBox(height: 20),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
