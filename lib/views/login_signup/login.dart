import 'package:flutter/material.dart';
import 'package:memestagram/enums/responsive.dart';
import 'package:memestagram/widgets/mobile/login_mobile.dart';
import 'package:memestagram/widgets/web/login_web.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var deviceDomain = getSizeDomain();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: deviceDomain != PlatformDomains.native,
              replacement: LoginMobile(
                usernameController: usernameController,
                passwordController: passwordController,
              ),
              child: LoginWeb(
                deviceDomain: deviceDomain,
                usernameController: usernameController,
                passwordController: passwordController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
