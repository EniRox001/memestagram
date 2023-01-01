import 'package:flutter/material.dart';
import 'package:memestagram/cloud_functions/server.dart';

class LoginProvider extends ChangeNotifier {
  String _response = "";

  String get response => _response;

  void setLoginResponse(String value) {
    _response = value;
    notifyListeners();
  }
}
