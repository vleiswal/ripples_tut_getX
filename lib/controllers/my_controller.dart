import 'dart:collection';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_tut_4/usr/student.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var student = Student(name: 'Vleis', age: 55).obs;

  void convertToUpperCase() {
    student.update((student) {
      student.name = student.name.toString().toUpperCase();
    });
  }

  void convertToLowerCase() {
    student.update((student) {
      student.name = student.name.toString().toLowerCase();
    });
  }
}
