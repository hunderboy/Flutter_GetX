import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CountCotrollerWithGetx extends GetxController {
  static CountCotrollerWithGetx get to => Get.find(); // 더 편하게 함수와 변수를 호출하기 위해
  RxInt count = 0.obs;

  void increase() {
    count++;
  }

  void putNumber(int value) {
    count = (value) as RxInt;

  }
}