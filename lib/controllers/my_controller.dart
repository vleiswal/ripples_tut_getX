import 'dart:collection';
import 'dart:ui';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_tut_4/usr/student.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;

  void changeLanguage(var langCode, var countryCode) {
    var locale = Locale(langCode, countryCode);
    Get.updateLocale(locale);
  }

  // void increment() {
  //   count++;
  //   //update(['txCount']);
  // }

  @override
  void onInit() {
    // called every time the variable count is changed
    // ever(count, (_) => print(count));

    //called every time the value of any variable in a List is changed
    //everAll([count], (_) => print(count));

    // called only once when variable changes
    //once(count, (_) => print(count));

    // called every time the user stop typing for 1 sec
    //debounce(count, (_) => print('When user stop typing for 1 sec'),
    //    time: Duration(seconds: 1));

    // Ignore all changes for a set time
    // interval(count, (_) => print('Ignore all changes for x time'),
    //    time: Duration(seconds: 3));

    super.onInit();
  }

  void cleanUpTask() {
    print('CleanUp Task');
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
