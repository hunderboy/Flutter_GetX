import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum NUM {FIRST,SECOND}

class User {
  String name;
  int age;

  User({required this.name, required this.age});
}

class CountControllerWithReactive extends GetxController {
  /*** 반응형 변수 */
  RxInt count = 0.obs;
  RxDouble _double = 0.0.obs;
  RxString value = "dd".obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User(name: "개남", age: 34).obs;
  RxList<String> list = [""].obs;
  /**
   * 굳이 업데이트 하는 함수를 추가해 주지 않아도,
   * 반응형이라서 변화가 있을때, 바로 변화된 데이터가 적용된다.
   */
  void increase() {
    count++;
    _double(425);     // Double 값 할당
    nums(NUM.SECOND); // 값 변경
    // user(User()); // 객체를 통째로 넣어서 업데이트
    user.update((_user){  // 일부만 없데이트
      _user?.name = "개발하는 남자";
    });

    // 리스트에 데이터 삽입
    // list.addAll(item);  // 모든 아이템 삽입
    // list.add();  // 아이템 개별 선택하여 삽입
    list.addIf(user.value.name=="개발하는 남자", "okay"); // 조건을 만족하면, okay 삽입
  }

  void putNumber(int value){
    count(value); // count = value 와 같은 내용 (observable 이라서 저렇게 작성)
  }

  // 반응형 트리거 사용
  @override
  void onInit() {
    // once, ever , debounce, interval
    // ever(count, (_)=>print("매번호출!!"));    // count(데이터)가 바뀔때마다 매번 호출 , reactive 상태(RxInt,RxString,, 등등)일때만 가능
    // once(count, (_)=>print("한번만 호출!!"));  // 한번만 호출되고, 다시 안불려짐
    // debounce(count, (_)=>print("마지막 변경에 한번만 호출!!"),time: Duration(seconds: 1)); // 검색 기능 작성, 서버전달할때 사용자가 입력을 마치고 할때 사용
    interval(count, (_)=>print("변경되고 있는 동안 1초마다 호출!!"),time: Duration(seconds: 1));
    super.onInit();
  }

}