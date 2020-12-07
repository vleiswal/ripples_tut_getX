import 'dart:collection';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_tut_4/usr/student.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0;

  void increment() async {
    await Future<int>.delayed(Duration(seconds: 2));
    this.count++;
    update();
  }

  void cleanUpTask() {
    print('CleanUp Task');
  }

  @override
  void onInit() {
    print('Init Called');
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
  // var student = Student(name: 'Vleis', age: 55).obs;

  // void convertToUpperCase() {
  //   student.update((student) {
  //     student.name = student.name.toString().toUpperCase();
  //   });
  // }

  // void convertToLowerCase() {
  //   student.update((student) {
  //     student.name = student.name.toString().toLowerCase();
  //   });
  // }
}
