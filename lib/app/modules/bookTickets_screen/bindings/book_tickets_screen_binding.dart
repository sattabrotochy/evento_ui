import 'package:get/get.dart';

import '../controllers/book_tickets_screen_controller.dart';

class BookTicketsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookTicketsScreenController>(
      () => BookTicketsScreenController(),
    );
  }
}
