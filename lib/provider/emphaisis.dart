import 'package:flutter/material.dart';

class Emphaisis extends ChangeNotifier {
  // ChangeNotifier를 extends한다.
  bool _ispressed = false; //false는 리그 오브 레전드인 상태
  String _accessToken = "";

  bool get ispressed => _ispressed;
  String get accessToken => _accessToken;
  void change() {
    _ispressed = !ispressed;
    notifyListeners();
  }

  void inputaccesstoken(String access) {
    print("access = $access");

    _accessToken = access;
    // ignore: avoid_print
    print("accessToken = $accessToken");
    notifyListeners();
  }

  
}
