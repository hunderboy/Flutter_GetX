

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/service/get_service_test.dart';

class GetxServiceWidget extends StatelessWidget {
  const GetxServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(GetServiceTest());


    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(Get.find<GetServiceTest>().count.toString(), style: TextStyle(fontSize: 40))
            ),
            RaisedButton(
                child: Text("Getx Service increase", style: TextStyle(fontSize: 15)),
                onPressed: () {
                  Get.find<GetServiceTest>().increase();
                }
            ),

            RaisedButton(
              child: Text("Getx Service clear"),
              onPressed: () {
                Get.reset(); // 모든 getx 컨트롤러 초기화
              },
            ),

          ],
        ),
      ),
    );
  }

}
