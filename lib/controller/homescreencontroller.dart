import 'package:flutter/material.dart';

class Homescreencontroller with ChangeNotifier {
  int count = 100;
  String name = "sanjay";
  incriment() {
    count++;
    notifyListeners();
  }
}
