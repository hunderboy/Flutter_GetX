

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/pages/dependencys/dependency_controller.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        child: Text("GetLazyPut"),
        onPressed: () {
          Get.find<DependencyController>().increase();
        },
      ),
    );
  }
}
