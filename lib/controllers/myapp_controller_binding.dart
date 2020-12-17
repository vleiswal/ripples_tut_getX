import 'package:get/get.dart';
import 'package:getx_tut_4/controllers/my_controller.dart';

class MyAppControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
  }
}
