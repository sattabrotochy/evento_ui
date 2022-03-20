import 'package:get/get.dart';

import '../controllers/tickets_screen_controller.dart';

class TicketsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TicketsScreenController>(
      () => TicketsScreenController(),
    );
  }
}
