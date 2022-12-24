import 'package:flutter/material.dart';
import 'package:memestagram/enums/responsive.dart';
import 'package:memestagram/widgets/mobile/login_mobile.dart';
import 'package:memestagram/widgets/web/login_web.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceDomain = getSizeDomain();

    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: deviceDomain != PlatformDomains.native,
              replacement: const LoginMobile(),
              child: LoginWeb(deviceDomain: deviceDomain),
            ),
          ],
        ),
      ),
    );
  }
}
