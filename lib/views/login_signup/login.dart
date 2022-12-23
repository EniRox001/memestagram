import 'package:flutter/material.dart';
import 'package:memestagram/enums/responsive.dart';
import 'package:memestagram/main.dart';
import 'package:sizer/sizer.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Visibility(
              visible: deviceDomain != PlatformDomains.native,
              replacement: const Text('Mobile'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/webLogin.png',
                      ),
                    ],
                  ),
                  Container(
                    height: 40.0.h,
                    width: 10.0.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Instagram',
                        ),
                        TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(fontSize: 10.0),
                            isDense: false,
                            filled: true,
                            fillColor: const Color(0xFFFAFAFA),
                            hintText: 'hintText',
                            hintStyle: const TextStyle(
                              fontSize: 14.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1.0.sp),
                            ),
                          ),
                        ),
                        // ElevatedButton(onPressed: () {}, child: Text('Log in'))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
