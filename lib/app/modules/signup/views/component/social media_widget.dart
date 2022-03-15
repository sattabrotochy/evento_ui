import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class SocialMediaWidget extends StatelessWidget {
  final Callback fbPress;
  final Callback googlePress;
  final Callback applePress;

  const SocialMediaWidget(
      {Key? key,
      required this.fbPress,
      required this.googlePress,
      required this.applePress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: SvgPicture.asset("assets/icon/fb.svg"),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 25,
            width: 25,
            child: SvgPicture.asset(
              "assets/icon/Gmail.svg",
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
              height: 30,
              width: 30,
              child: SvgPicture.asset("assets/icon/Apple.svg")),
        ],
      ),
    );
  }
}
