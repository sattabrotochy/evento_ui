import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';

class HomeHeaderWidget extends StatelessWidget {
  final Callback categoryPage;
  const HomeHeaderWidget({Key? key, required this.categoryPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: double.maxFinite,
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Find Your \n"
              "Favorite Events",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  fontSize: Get.width / 15,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  height: Get.height / 16,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: kPrimaryColorOrange,
                      )),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        suffixIcon: Icon(Icons.search)),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: categoryPage,
                child: Container(
                  height: Get.height / 16,
                  width: 60,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: kPrimaryColorOrange,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      )),
                  child: SvgPicture.asset("assets/icon/filter.svg"),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
