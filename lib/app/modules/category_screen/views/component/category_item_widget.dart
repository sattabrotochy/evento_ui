

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';

class CategoryWidget extends StatelessWidget {
  final String title1;
  final String title2;
  final String image1;
  final String image2;
  final Callback press1;
  final Callback press2;

  const CategoryWidget({Key? key, required this.title1, required this.title2, required this.image1, required this.image2, required this.press1, required this.press2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: press1,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 20, top: 5),
              height: Get.height / 5,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(image1),
                  const SizedBox(height: 10,),
                  Text(title1,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: Get.width/26,
                        color: ktextColors
                    ),)
                ],
              ),
            ),
          )
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: press2,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 20, top: 5),
              height: Get.height / 5,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(image2),
                  const SizedBox(height: 10,),
                  Text(title2,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: Get.width/26,
                        color: ktextColors
                    ),)
                ],
              ),
            ),
          )
        ),
      ],
    );
  }
}
