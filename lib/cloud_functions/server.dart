// ignore_for_file: use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:memestagram/views/login_signup/login.dart';

var dio = Dio();
String url = 'http://10.0.2.2:8080';
String message = '';

Future<String> login(BuildContext context) async {
  try {
    var response = await dio.post(
      'http://10.0.2.2:8080/login',
      data:
          '${usernameController.text.toString()} ${passwordController.text.toString()}',
    );
    if (response.data == 'no user found') {
      message = 'username or password is incorrect';
    } else {
      message = 'successfully logged in';
    }
  } catch (e) {
    message = 'an unexpected error occured';
    return message;
  }
  return message;
}
