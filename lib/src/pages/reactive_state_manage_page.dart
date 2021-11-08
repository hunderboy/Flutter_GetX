import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/controller/count_controller_with_getx.dart';
import 'package:getx_example/src/controller/count_controller_with_provider.dart';
import 'package:getx_example/src/controller/count_controller_with_reactive.dart';
import 'package:getx_example/src/pages/state/with_getx.dart';
import 'package:getx_example/src/pages/state/with_provider.dart';
import 'package:provider/provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());

    return Scaffold(
      appBar: AppBar(
        title: Text("반응형 상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( "Getx", style: TextStyle(fontSize: 30)),
            Obx(() {
              /**
               * // 값이 변화 될때만 UI 변경이 일어난다는 것을 보여주기 위한 print
               * 값을 5로 설정 한뒤에 "5로 변경" 을 계속 눌러도 데이터가 변하지 않으니
               * 화면 업데이트가 일어나지 않는다.
               */
            print("반응형 update");
            return Text(
              "${Get.find<CountControllerWithReactive>().count.value}",
              style: TextStyle(fontSize: 50));
            }),
            RaisedButton(
              child: Text("+", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              }
            ),
            RaisedButton(
                child: Text("5로 변경", style: TextStyle(fontSize: 30)),
                onPressed: () {
                  Get.find<CountControllerWithReactive>().putNumber(5);
                }
            ),
          ],
        ),
      ),
    );
  }
}
