import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dependency_controller.dart';

class GetPut extends StatelessWidget {
  const GetPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        child: Text("GetPut"),
        onPressed: () {
          print(Get.find<DependencyController>().hashCode); // 인스턴스이 고유 해시값
          Get.find<DependencyController>().increase();
        },
      ),
    );
  }
}
