import 'package:flutter/material.dart';
import 'package:memestagram/enums/responsive.dart';
import 'package:memestagram/widgets/mobile/signup_mobile_one.dart';
import 'package:memestagram/widgets/web/signup_web.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var deviceDomain = getSizeDomain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: deviceDomain != PlatformDomains.native,
              replacement: const SignupMobileOne(),
              child: const SignupWeb(),
            ),
          ],
        ),
      ),
    );
  }
}
