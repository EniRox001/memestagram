import 'package:flutter/material.dart';
import 'package:memestagram/enums/responsive.dart';
import 'package:memestagram/widgets/common/w_divider.dart';
import 'package:memestagram/widgets/common/w_elevated_button.dart';
import 'package:memestagram/widgets/common/w_textfield.dart';
import 'package:memestagram/widgets/common/w_textspan.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWeb extends StatelessWidget {
  const LoginWeb({
    Key? key,
    required this.deviceDomain,
  }) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final deviceDomain;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Visibility(
          visible: deviceDomain == PlatformDomains.desktopWeb,
          replacement: const SizedBox(),
          child: Row(
            children: [
              Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/webLogin.png',
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 2.0.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 3.0.w,
              ),
              height: deviceDomain == PlatformDomains.desktopWeb
                  ? 50.0.h
                  : deviceDomain == PlatformDomains.tabletWeb
                      ? 45.0.h
                      : 60.0.h,
              width: deviceDomain == PlatformDomains.desktopWeb
                  ? 25.0.w
                  : deviceDomain == PlatformDomains.tabletWeb
                      ? 40.0.w
                      : 80.0.w,
              decoration: BoxDecoration(
                color: deviceDomain != PlatformDomains.mobileWeb
                    ? Colors.white
                    : Colors.transparent,
                border: deviceDomain != PlatformDomains.mobileWeb
                    ? Border.all(
                        color: Colors.grey,
                      )
                    : Border.all(
                        color: const Color(0xFFFAFAFA),
                      ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: deviceDomain == PlatformDomains.desktopWeb
                        ? 6.5.h
                        : deviceDomain == PlatformDomains.tabletWeb
                            ? 3.5.h
                            : 2.0.h,
                  ),
                  Text('Memestagram',
                      style: GoogleFonts.raleway(
                          textStyle: Theme.of(context).textTheme.titleLarge)),
                  SizedBox(
                    height: deviceDomain == PlatformDomains.desktopWeb
                        ? 5.5.h
                        : deviceDomain == PlatformDomains.tabletWeb
                            ? 3.5.h
                            : 5.0.h,
                  ),
                  WTextField(
                    deviceDomain: deviceDomain,
                    hintText: 'Phone number, username or email',
                  ),
                  SizedBox(height: 1.5.h),
                  WTextField(
                    deviceDomain: deviceDomain,
                    hintText: 'Password',
                  ),
                  SizedBox(height: 1.5.h),
                  WElevatedButton(
                    onPressed: () {},
                    text: 'Log in',
                  ),
                  SizedBox(height: 1.5.h),
                  const WDivider(text: "OR"),
                  SizedBox(height: 1.5.h),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Login with Facebook',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent,
                          ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.blueAccent,
                          ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: deviceDomain == PlatformDomains.desktopWeb
                  ? 3.5.h
                  : deviceDomain == PlatformDomains.tabletWeb
                      ? 1.5.h
                      : 0.0.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 3.0.w,
              ),
              height: deviceDomain == PlatformDomains.desktopWeb
                  ? 8.0.h
                  : deviceDomain == PlatformDomains.tabletWeb
                      ? 5.0.h
                      : 10.0.h,
              width: deviceDomain == PlatformDomains.desktopWeb
                  ? 25.0.w
                  : deviceDomain == PlatformDomains.tabletWeb
                      ? 40.0.w
                      : 80.0.w,
              decoration: BoxDecoration(
                color: deviceDomain != PlatformDomains.mobileWeb
                    ? Colors.white
                    : Colors.transparent,
                border: deviceDomain != PlatformDomains.mobileWeb
                    ? Border.all(
                        color: Colors.grey,
                      )
                    : Border.all(
                        color: const Color(0xFFFAFAFA),
                      ),
              ),
              child: Center(
                child: WTextSpan(
                  textOne: 'Don\'t have an account? ',
                  textTwo: 'Sign up',
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
