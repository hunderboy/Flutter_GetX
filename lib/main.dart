import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/home.dart';

import 'src/pages/named/first.dart';
import 'src/pages/named/second.dart';

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
      routes: {
        "/": (context) => Home(),
        "/first": (context) => FirstNamedPage(),
        "/second": (context) => SecondNamedPage(),
      },
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/first", page: () => FirstNamedPage()),
        GetPage(name: "/second", page: () => SecondNamedPage()),
      ],
    );
  }
}
