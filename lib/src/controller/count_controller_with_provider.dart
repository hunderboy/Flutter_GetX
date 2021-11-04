import 'package:flutter/cupertino.dart';

class CountCotrollerWithProvider extends ChangeNotifier {
  int count = 0;

  void increase() {
    count++;
    notifyListeners();
  }
}
