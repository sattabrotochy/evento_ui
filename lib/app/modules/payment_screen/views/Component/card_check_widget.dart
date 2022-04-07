import 'package:evento_ui/app/modules/payment_screen/views/Component/text_widget_cart_checker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constant.dart';
import '../../../common_widget/button_widget.dart';
import 'text_input_widget.dart';

class CardCheckWidget extends StatelessWidget {
  const CardCheckWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 25,
          ),
          child: const TextWidgetCartChecker(
            textTitele: "Card number",
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
                child: TextInputWidgets(
                  height: 16,
                  width: double.maxFinite,
                  formFieldValidator: (value) {},
                  onchange: (value) {},
                  obscure: false,
                  hintText: "1234  5678  9012  3456",
                  textInputType: TextInputType.number,
                ),
              ),
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
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Image(
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
          margin: const EdgeInsets.only(
            left: 25,
          ),
          child: const TextWidgetCartChecker(
            textTitele: "Card Holder Name",
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: TextInputWidgets(
            height: 16,
            width: double.maxFinite,
            formFieldValidator: (value) {},
            onchange: (value) {},
            obscure: false,
            hintText: "Nayeem Azraf Chy",
            textInputType: TextInputType.number,
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
                  const TextWidgetCartChecker(
                    textTitele: "Expire Date",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextInputWidgets(
                    height: 16,
                    width: 130,
                    formFieldValidator: (value) {},
                    onchange: (value) {},
                    obscure: false,
                    hintText: "10/12/2820",
                    textInputType: TextInputType.number,
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
                  const TextWidgetCartChecker(
                    textTitele: "CCV",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextInputWidgets(
                    height: 16,
                    width: 80,
                    formFieldValidator: (value) {},
                    onchange: (value) {},
                    obscure: false,
                    hintText: "1234",
                    textInputType: TextInputType.number,
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
            press: () {
              Get.toNamed('/tickets-screen');
            },
            color: kPrimaryColorWhite,
            text: "CONFIRM & PAY",
            boxShadow: kPrimaryColorOrange.withOpacity(0.2),
          ),
        ),
      ],
    );
  }
}
