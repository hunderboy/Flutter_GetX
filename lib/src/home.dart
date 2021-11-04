import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/pages/simple_state_manage_page.dart';
import 'pages/normal/first.dart';

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
            RaisedButton(
              child: Text("Named 라우트"),
              onPressed: () {
                Get.toNamed("/first");
              },
            ),
            RaisedButton(
              child: Text("Argument 전달"),
              onPressed: () {
                // arguments 에 객체나 String, Int 등 다양한 타입의 데이터를 이동하는 화면에 전달 가능
                Get.toNamed("/next", arguments: User("개발하는남자", 22));
              },
            ),
            RaisedButton(
              child: Text("단순상태관리"),
              onPressed: () {
                // arguments 에 객체나 String, Int 등 다양한 타입의 데이터를 이동하는 화면에 전달 가능
                Get.to(SimpleStateMananePage());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;

  User(this.name, this.age);
}
