import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut_4/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'The value is ${Get.find<HomeController>().count}',
                style: TextStyle(color: Colors.blue, fontSize: 25),
              ),
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text(
                'Increment',
              ),
              onPressed: () {
                //Get.toNamed('/nextScreen');
                Get.find<HomeController>().increment();
              },
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text(
                'Back to Main Screen',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Get.back();
              },
            ),
            SizedBox(height: 10),
            // Container(
            //   child: Text(
            //     'The channel is ${Get.parameters['channel']} and the content is ${Get.parameters['content']}',
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
