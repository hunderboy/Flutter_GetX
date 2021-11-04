import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'second.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Named Page"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("다음페이지 이동"),
              onPressed: () {
                Get.offNamed("/second");
              },
            ),
          ],
        ),
      ),
    );
  }
}
