import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GetServiceTest extends GetxService {
  static GetServiceTest get to => Get.find(); // 더 편하게 함수와 변수를 호출하기 위해
  RxInt count = 0.obs;

  void increase() {
    count++;
  }
}