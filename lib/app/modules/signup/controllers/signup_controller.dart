import 'package:get/get.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController





  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }


  void onClick(){
    Get.offNamed('/login');
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
