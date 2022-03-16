import 'package:get/get.dart';

import '../controllers/location_set_page_controller.dart';

class LocationSetPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocationSetPageController>(
      () => LocationSetPageController(),
    );
  }
}
