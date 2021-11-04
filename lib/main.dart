import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/home.dart';

import 'src/pages/named/first.dart';
import 'src/pages/named/second.dart';
import 'src/pages/next.dart';
import 'src/pages/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => Home(), transition: Transition.zoom),
        GetPage(
            name: "/first",
            page: () => FirstNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/second",
            page: () => SecondNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/next",
            page: () => NextPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/user/:uid",
            page: () => UserPage(),
            transition: Transition.zoom),
      ],
    );
  }
}
