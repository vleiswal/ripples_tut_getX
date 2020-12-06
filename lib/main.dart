import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut_4/screens/home_screen.dart';
import 'package:getx_tut_4/screens/next_screen.dart';
import 'package:getx_tut_4/screens/unknown_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'State Management',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text('Count Value is: $count',
                    style: TextStyle(fontSize: 25)),
              ),
              SizedBox(height: 10),
              RaisedButton(
                child: Text('Increment'),
                onPressed: () => increment(),
              ),
            ],
          ),
        ),
      ),
    );
  }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Navigation',
//       initialRoute: '/',
//       debugShowCheckedModeBanner: false,
//       defaultTransition: Transition.zoom,
//       getPages: [
//         GetPage(name: '/', page: () => MyApp()),
//         GetPage(name: '/home', page: () => HomeScreen()),
//         // GetPage(
//         //   name: '/nextScreen',
//         //   page: () => NextScreen(),
//         //   transition: Transition.leftToRight,
//         // ),
//         GetPage(
//           name: '/nextScreen/:someValue',
//           page: () => NextScreen(),
//           transition: Transition.leftToRight,
//         ),
//       ],
//       unknownRoute: GetPage(
//         name: '/notfound',
//         page: () => UnknownRoute(),
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Navigation'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               RaisedButton(
//                 child: Text('Go to Home Screen'),
//                 onPressed: () {
//                   Get.toNamed('/homex');
//                   // Get.toNamed(
//                   //   '/home?channel=VleisWa&content=Flutter GetX',
//                   // );
//                   //showBottomSheet(); //BottomSheet
//                   //routeNavigation();
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Dialog',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Navigation'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               RaisedButton(
//                 child: Text('Go to Home Screen'),
//                 onPressed: () {
//                   //showBottomSheet(); //BottomSheet
//                   routeNavigation();
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

  showBottomSheet() {
    return (Get.bottomSheet(
      Container(
        child: Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.wb_sunny_outlined),
              title: Text('Light Theme'),
              onTap: () => {
                Get.changeTheme(
                  ThemeData.light(),
                ),
              },
            ),
            ListTile(
              leading: Icon(Icons.wb_sunny),
              title: Text('Dark Theme'),
              onTap: () => {
                Get.changeTheme(
                  ThemeData.dark(),
                ),
              },
            ),
          ],
        ),
      ),
      barrierColor: Colors.greenAccent.shade100,
      backgroundColor: Colors.purpleAccent,
      isDismissible: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side:
            BorderSide(color: Colors.white, style: BorderStyle.solid, width: 2),
      ),
      enableDrag: false,
    ));
  }

  routeNavigation() async {
    var data = await Get.to(HomeScreen(), arguments: 'qazwsx456');
    print('Info from Home Sreen: $data');
  }
}
