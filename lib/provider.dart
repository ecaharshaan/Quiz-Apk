import 'package:flutter/material.dart';
import 'package:flutter_application_6/qno1.dart';

class ProVider with ChangeNotifier {
  bool firstButton = false;
  bool secondButton = false;
  bool thirdButton = false;
  bool forthButton = false;
  bool check = false;
  int questionsIndex = 0;
  int answersIndex = 0;
  int optionsIndex = 0;

  void firSt() {
    check = true;
    firstButton = true;
    secondButton = false;
    thirdButton = false;
    forthButton = false;
    buttonIndex = 1;
    notifyListeners();
  }

  void seCond() {
    check = true;
    firstButton = false;
    secondButton = true;
    thirdButton = false;
    forthButton = false;
    buttonIndex = 2;
    notifyListeners();
  }

  void thiRd() {
    check = true;
    firstButton = false;
    secondButton = false;
    thirdButton = true;
    forthButton = false;
    buttonIndex = 3;
    notifyListeners();
  }

  void forTh() {
    check = true;
    firstButton = false;
    secondButton = false;
    thirdButton = false;
    forthButton = true;
    buttonIndex = 4;
    notifyListeners();
  }

  void checker() {
    check = false;
    firstButton = false;
    secondButton = false;
    thirdButton = false;
    forthButton = false;
    notifyListeners();
  }

  // int selectedOptions = 0;
  // void option1() {
  //   selectedOptions = 0;
  //   notifyListeners();
  // }

  // void option2() {
  //   selectedOptions = 1;
  //   notifyListeners();
  // }

  // void option3() {
  //   selectedOptions = 2;
  //   notifyListeners();
  // }

  // void option4() {
  //   selectedOptions = 3;
  //   notifyListeners();
  // }
}
