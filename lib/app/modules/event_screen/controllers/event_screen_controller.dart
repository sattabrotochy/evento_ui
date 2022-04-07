import 'package:get/get.dart';

class EventScreenController extends GetxController {
  //TODO: Implement EventScreenController

  final count = 0.obs;




  RxBool recent=true.obs;
  RxBool thisWeek=false.obs;
  RxBool thisMonth=false.obs;



  setRecentFalse(){
    recent(false);
    update();
  }
  setRecentTrue(){
    recent(true);
    update();
  }


  setThisWeekFalse(){
    thisWeek(false);
    update();
  }
  setThisWeekTrue(){
    thisWeek(true);
    update();
  }

  setThisMonthFalse(){
    thisMonth(false);
    update();
  }
  setThisMonthTrue(){
    thisMonth(true);
    update();
  }

  @override
  void onInit() {
    super.onInit();
    eventBar(1);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;


  eventBar(id){
    if(id==1){
      return  setRecentTrue();
    } if(id==2){
      return  setThisWeekTrue();
    } if(id==3){
      return  setThisMonthTrue();
    }
    update();

  }
}
