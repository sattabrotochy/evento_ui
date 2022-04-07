import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 1.obs;

  var indexCount = 1;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  indexCountTrendingEvent(index) {
    indexCount = index;
    update();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
