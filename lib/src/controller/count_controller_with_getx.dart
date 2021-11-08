import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CountCotrollerWithGetx extends GetxController {
  int count = 0;

  void increase(String id) {
    count++;
    update([id]);
  }
}