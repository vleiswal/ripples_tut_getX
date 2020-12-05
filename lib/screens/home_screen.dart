import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            Text(
              'This is the Home Screen',
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text(
                'Next Screen',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text(
                'Back to Main Screen',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Get.back(result: 'From the Home Screen');
              },
            ),
            SizedBox(height: 10),
            Container(
              child: Text('The data from Main is: ${Get.arguments}'),
            ),
          ],
        ),
      ),
    );
  }
}
