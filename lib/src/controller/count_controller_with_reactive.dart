import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountControllerWithReactive extends GetxController {
  /*** 반응형 변수 */
  RxInt count = 0.obs;

  /**
   * 굳이 업데이트 하는 함수를 추가해 주지 않아도,
   * 반응형이라서 변화가 있을때, 바로 변화된 데이터가 적용된다.
   */
  void increase() {
    count++;
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