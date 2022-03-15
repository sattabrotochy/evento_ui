// ignore_for_file: avoid_print

import 'package:evento_ui/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../controllers/onboarding_screen_controller.dart';
import 'component/onboarding_widget.dart';

class OnboardingScreenView extends GetView<OnboardingScreenController> {
  const OnboardingScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Choose Events Near to You',
              body:
                  'Lorem Ipsum has been the industry standardummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type.',
              image: buildImage('assets/images/image1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Choose Best Artist',
              body:
                  'Lorem Ipsum has been the industrys standardummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type.',
              image: buildImage('assets/images/image2.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Choose Best Events ',
              body:
                  'Lorem Ipsum has been the industry standardummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type.',
              image: buildImage('assets/images/image3.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: const Text('Lets Start',
              style: TextStyle(color: kPrimaryColorOrange)),
          onDone: () {
            Get.offAllNamed('/login');
          },
          showSkipButton: true,
          skip:
              const Text('Skip', style: TextStyle(color: kPrimaryColorOrange)),
          next:
              const Text('Next', style: TextStyle(color: kPrimaryColorOrange)),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}
