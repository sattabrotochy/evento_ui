import 'package:get/get.dart';

import '../controllers/event_screen_controller.dart';
import '../views/componet/event_bar_widget.dart';

class EventScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventScreenController>(
      () => EventScreenController(),
    );
    Get.lazyPut<EventBarWidget>(
          () => const EventBarWidget(),
    );
  }
}
