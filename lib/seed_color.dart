import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class Colored with ChangeNotifier {
  Color seedColor = const Color(0xff348feb);

  void nowSeedColor() {}

  void changeColor() {
    RandomColor _randomColor = RandomColor();
    Color _colored = _randomColor.randomColor();
    seedColor = _colored;

    notifyListeners();
  }
}
