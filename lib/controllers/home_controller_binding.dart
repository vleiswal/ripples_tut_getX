import 'package:get/get.dart';
import 'package:getx_tut_4/controllers/home_controller.dart';

class HomeControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
