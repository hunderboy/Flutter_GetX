import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/normal/first.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("일반적인 라우트"),
              onPressed: () {
                Get.to(FirstPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
