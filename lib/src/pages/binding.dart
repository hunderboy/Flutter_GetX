

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/controller/count_controller_with_getx.dart';


// 2. 컨트롤러를 호출하는 더 편한 방식
// extends StatelessWidget (x)
// extends GetView<사용될 컨트롤러> (o)
// 이렇게 하면 이 클래스 코드 내에서 컨트롤러 명을 계속 적어 주면서 호출할 필요가 없다.
// 'controller' 를 적으면 바로 컨트롤러의 변수와 함수에 접근가능.
class BindingPage extends GetView<CountCotrollerWithGetx> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /*** 컨트롤러 내부의 변수가 변화가 되었을 때, 변화된 값을 표시하기 위한 GetBuilder */
          // GetBuilder<CountCotrollerWithGetx>(builder: (_){
          //   return Text(_.count.toString(), style: TextStyle(fontSize: 40),);
          // }),
          Obx(
            () => Text(controller.count.toString(), style: TextStyle(fontSize: 40))
          ),
          ElevatedButton(
            child: Text("+"),
            onPressed: () {
              // Get.find<CountCotrollerWithGetx>().increase(); // 1. 이거 대신 static 만들어서
              controller.increase(); // 더 간편하게 사용(싱글톤 방식)
            },
          )
        ],
      ),
    );
  }
}
