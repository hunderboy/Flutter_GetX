import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Named Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("뒤로 이동"),
              onPressed: () {
                Get.back();
              },
            ),
            RaisedButton(
              child: Text("홈으로 이동"),
              onPressed: () {
                Get.to(Home());
                Get.offAll(Home());
              },
            ),
          ],
        ),
      ),
    );
  }
}
