
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/pages/dependencys/dependency_controller.dart';
import 'package:getx_example/src/pages/dependencys/get_lazyput.dart';
import 'package:getx_example/src/pages/dependencys/get_put.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("의존성주입"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Getput"),
              onPressed: () {
                Get.to(() => GetPut(),
                binding: BindingsBuilder(() {
                  Get.put(DependencyController());
                }));
              }
            ),
            ElevatedButton(
                child: Text("Get.lazyPut"),
                onPressed: () {
                  Get.to(() => GetLazyPut(),
                  binding: BindingsBuilder(() {
                    Get.lazyPut<DependencyController>(
                            ()=> DependencyController()
                    );
                  }));
                }
            ),
            ElevatedButton(
              /**
               * 페이지 이동할때, 서버에서 데이터를 받아와서 표현 해야 하거나.
               * 인스턴스를 들어가기 전에 생성해야하거나,
               * 페이지 이동전 사전준비가 필요할때 사용
               */
                child: Text("Get.putAsync"),
                onPressed: () {
                  Get.to(() => GetPut(),
                      binding: BindingsBuilder(() {
                        Get.putAsync<DependencyController>(() async {
                          await Future.delayed(Duration(seconds: 5)); // 딜레이 후 controller 초기화
                          return DependencyController();
                        });
                      }));
                }
            ),
            ElevatedButton(
                child: Text("Get.create"),
                onPressed: () {
                  Get.to(() => GetPut(),
                      binding: BindingsBuilder(() {
                        Get.create<DependencyController>(
                          () => DependencyController()
                        );
                      }));
                }
            ),
          ],
        ),

      ),
    );
  }
}
