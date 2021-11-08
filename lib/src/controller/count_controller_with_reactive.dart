import 'package:get/get.dart';

class CountControllerWithReactive {
  /*** 반응형 변수 */
  RxInt count = 0.obs;

  /**
   * 굳이 업데이트 하는 함수를 추가해 주지 않아도,
   * 반응형이라서 변화가 있을때, 바로 변화된 데이터가 적용된다.
   */
  void increase() {
    count++;
  }
}