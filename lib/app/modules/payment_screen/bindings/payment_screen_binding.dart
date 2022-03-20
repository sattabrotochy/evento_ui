import 'package:get/get.dart';

import '../controllers/payment_screen_controller.dart';

class PaymentScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentScreenController>(
      () => PaymentScreenController(),
    );
  }
}
