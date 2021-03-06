import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut_4/controllers/all_controller_binding.dart';
import 'package:getx_tut_4/controllers/home_controller.dart';
import 'package:getx_tut_4/controllers/home_controller_binding.dart';
import 'package:getx_tut_4/controllers/my_controller.dart';
import 'package:getx_tut_4/controllers/service.dart';
import 'package:getx_tut_4/screens/home_screen.dart';
import 'package:getx_tut_4/screens/next_screen.dart';
import 'package:getx_tut_4/screens/unknown_route.dart';
import 'package:getx_tut_4/usr/messages.dart';
import 'package:getx_tut_4/usr/student.dart';

import 'controllers/myapp_controller_binding.dart';

Future<void> main() async {
  // await initServices();
  MyAppControllerBinding().dependencies();
  runApp(MyApp());
}

// Future<void> initServices() async {
//   print('Starting Services....');
//   await Get.putAsync<Service>(() async => Service());
//   print('All services started....');
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Binding',
      debugShowCheckedModeBanner: false,
      //initialBinding: AllControllerBinding(),
      // getPages: [
      //   GetPage(
      //       name: '/home',
      //       page: () => HomeScreen(),
      //       binding: HomeControllerBinding()),
      // ],
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomeScreen(),
          binding: BindingsBuilder(
            () => {Get.lazyPut<HomeController>(() => HomeController())},
          ),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text('Binding'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'The value is ${Get.find<MyController>().count}',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(height: 10),
              RaisedButton(
                child: Text('Increment'),
                onPressed: () {
                  Get.find<MyController>().increment();
                },
              ),
              SizedBox(height: 10),
              RaisedButton(
                child: Text('Home'),
                onPressed: () {
                  Get.toNamed('/home');
                  //Get.to(HomeScreen());
                },
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
// //Create Controller
//     // final MyController myController =
//     //     Get.put(MyController(), tag: 'instance1', permanent: true);

//     //Get.lazyPut(() => MyController());

//     //Get.create<MyController>(() => MyController());

//     Get.putAsync<MyController>(() async => MyController());

//     return GetMaterialApp(
//       title: 'Dependancy Inject',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Dependancy Inject'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               RaisedButton(
//                 child: Text('Afr'),
//                 onPressed: () {
//                   //Get.find<MyController>();
//                   Get.find<MyController>().incrementCounter();
//                 },
//               ),
//               SizedBox(height: 10),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

// class MyApp extends StatelessWidget {
//   //Create Controller
//   MyController myController =
//       Get.put(MyController(), tag: 'instance1', permanent: true);

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Translations',
//       translations: Messages(),
//       locale: Locale('en', 'US'),
//       fallbackLocale: Locale('en', 'US'),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Internationalizations'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'hello'.tr,
//                 style: TextStyle(fontSize: 25, color: Colors.blueAccent),
//               ),
//               SizedBox(height: 10),
//               RaisedButton(
//                 child: Text('Afr'),
//                 onPressed: () => myController.changeLanguage('af', 'ZA'),
//               ),
//               SizedBox(height: 10),
//               RaisedButton(
//                 child: Text('English'),
//                 onPressed: () => myController.changeLanguage('us', 'US'),
//               ),
//               SizedBox(height: 10),
//               RaisedButton(
//                 child: Text('French'),
//                 onPressed: () => myController.changeLanguage('fr', 'FR'),
//               ),
//               // Padding(
//               //   padding: EdgeInsets.all(16),
//               //   child: TextField(
//               //     onChanged: (val) {
//               //       myController.increment();
//               //     },
//               //   ),
//               // )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

// class MyApp extends StatelessWidget {
//   //Create Controller
//   MyController myController = Get.put(MyController());

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Workers',
//       //initialRoute: '/',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Workers'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(height: 10),
//               RaisedButton(
//                 child: Text('Increment Counter'),
//                 onPressed: () => myController.increment(),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(16),
//                 child: TextField(
//                   onChanged: (val) {
//                     myController.increment();
//                   },
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

// class MyApp extends StatelessWidget {
//   //Create Controller
//   MyController myController = Get.put(MyController());

  // @override
  // Widget build(BuildContext context) {
  //   return GetMaterialApp(
  //     title: 'Lesson 13',
  //     //initialRoute: '/',
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text('Lesson 13'),
  //       ),
  //       body: Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           children: [
  //             GetBuilder<MyController>(
  //               // initState: (data) => myController.increment(),
  //               // dispose: (_) => myController.cleanUpTask(),
  //               id: 'txCount',
  //               builder: (controller) {
  //                 return Text(
  //                   'The value is: ${controller.count}',
  //                   style: TextStyle(fontSize: 25),
  //                 );
  //               },
  //             ),
  //             GetBuilder<MyController>(
  //               // initState: (data) => myController.increment(),
  //               // dispose: (_) => myController.cleanUpTask(),

  //               builder: (controller) {
  //                 return Text(
  //                   'The value is..: ${controller.count}',
  //                   style: TextStyle(fontSize: 25),
  //                 );
  //               },
  //             ),
  //             SizedBox(height: 10),
  //             RaisedButton(
  //                 child: Text('Increment Counter'),
  //                 onPressed: () {
  //                   myController.increment();
  //                 }),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

// class MyApp extends StatelessWidget {
//   //var student = Student();

//   // final student = Student(name: 'Vleiskop', age: 57).obs;
//   //Create Controller
//   MyController myController = Get.put(MyController());

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'State Management',
//       //initialRoute: '/',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('State Management'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Obx(
//                 () => Text('The student is: ${myController.student.value.name}',
//                     style: TextStyle(fontSize: 25)),
//               ),
//               SizedBox(height: 10),
//               RaisedButton(
//                   child: Text('To Upper Case'),
//                   onPressed: () {
//                     myController.convertToUpperCase();
//                   }),
//               SizedBox(height: 10),
//               RaisedButton(
//                   child: Text('To Lower Case'),
//                   onPressed: () {
//                     myController.convertToLowerCase();
//                   }),
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
