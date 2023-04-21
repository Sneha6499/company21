import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> options = ['1-2','2-5','5,8','over 10'];
  Rx<List<String>>selectedOptionList = Rx<List<String>>([]);
  var selectionOptions =''.obs;
  @override
  voidonInit(){
    super.onInit();
  }

  @override
  void onReady(){
    super.onReady();
  }
  @override
  void onClose(){

  }

}