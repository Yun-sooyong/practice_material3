import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class Colored with ChangeNotifier {
  Color seedColor = const Color(0xff348feb);

  RandomColor _randomColor = RandomColor();

  void changeColor() {
    Color _colored = _randomColor.randomColor();
    seedColor = _colored;

    notifyListeners();
  }
}
