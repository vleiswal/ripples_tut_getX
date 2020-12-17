import 'package:get/get.dart';
import 'package:getx_tut_4/controllers/home_controller.dart';
import 'package:getx_tut_4/controllers/my_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
    Get.put(HomeController());
  }
}
