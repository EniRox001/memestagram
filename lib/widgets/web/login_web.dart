// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:memestagram/cloud_functions/server.dart';
import 'package:memestagram/enums/responsive.dart';
import 'package:memestagram/views/login_signup/login.dart';
import 'package:memestagram/widgets/common/w_divider.dart';
import 'package:memestagram/widgets/common/w_elevated_button.dart';
import 'package:memestagram/widgets/common/w_textfield.dart';
import 'package:memestagram/widgets/common/w_textspan.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:memestagram/providers/login_provider.dart';

class LoginWeb extends StatefulWidget {
  const LoginWeb({
    Key? key,
    required this.deviceDomain,
    required this.usernameController,
    required this.passwordController,
  }) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final deviceDomain;
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  State<LoginWeb> createState() => _LoginWebState();
}

class _LoginWebState extends State<LoginWeb> {
  @override
  Widget build(BuildContext context) {
    String snackbarText = '';

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Visibility(
          visible: widget.deviceDomain == PlatformDomains.desktopWeb,
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
              height: widget.deviceDomain == PlatformDomains.desktopWeb
                  ? 60.0.h
                  : widget.deviceDomain == PlatformDomains.tabletWeb
                      ? 47.0.h
                      : 60.0.h,
              width: widget.deviceDomain == PlatformDomains.desktopWeb
                  ? 25.0.w
                  : widget.deviceDomain == PlatformDomains.tabletWeb
                      ? 40.0.w
                      : 80.0.w,
              decoration: BoxDecoration(
                color: widget.deviceDomain != PlatformDomains.mobileWeb
                    ? Colors.white
                    : Colors.transparent,
                border: widget.deviceDomain != PlatformDomains.mobileWeb
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
                    height: widget.deviceDomain == PlatformDomains.desktopWeb
                        ? 6.5.h
                        : widget.deviceDomain == PlatformDomains.tabletWeb
                            ? 3.5.h
                            : 2.0.h,
                  ),
                  Text(
                    'Memestagram',
                    style: GoogleFonts.raleway(
                      textStyle: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(
                    height: widget.deviceDomain == PlatformDomains.desktopWeb
                        ? 5.5.h
                        : widget.deviceDomain == PlatformDomains.tabletWeb
                            ? 3.5.h
                            : 5.0.h,
                  ),
                  WTextField(
                    controller: widget.usernameController,
                    deviceDomain: widget.deviceDomain,
                    hintText: 'Phone number, username or email',
                  ),
                  SizedBox(height: 1.5.h),
                  WTextField(
                    controller: widget.passwordController,
                    deviceDomain: widget.deviceDomain,
                    hintText: 'Password',
                  ),
                  SizedBox(height: 1.5.h),
                  WElevatedButton(
                    onPressed: () async {
                      await login(context).then(
                        (value) => context
                            .read<LoginProvider>()
                            .setLoginResponse(value),
                      );
                    },
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
                  SizedBox(height: 1.5.h),
                  Text(
                    context.watch<LoginProvider>().response,
                    style: const TextStyle(color: Colors.redAccent),
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
              height: widget.deviceDomain == PlatformDomains.desktopWeb
                  ? 3.5.h
                  : widget.deviceDomain == PlatformDomains.tabletWeb
                      ? 1.5.h
                      : 0.0.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 3.0.w,
              ),
              height: widget.deviceDomain == PlatformDomains.desktopWeb
                  ? 8.0.h
                  : widget.deviceDomain == PlatformDomains.tabletWeb
                      ? 5.0.h
                      : 10.0.h,
              width: widget.deviceDomain == PlatformDomains.desktopWeb
                  ? 25.0.w
                  : widget.deviceDomain == PlatformDomains.tabletWeb
                      ? 40.0.w
                      : 80.0.w,
              decoration: BoxDecoration(
                color: widget.deviceDomain != PlatformDomains.mobileWeb
                    ? Colors.white
                    : Colors.transparent,
                border: widget.deviceDomain != PlatformDomains.mobileWeb
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

  Future<dynamic> showMessage(BuildContext context, String message) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.only(top: 5.0.h),
        content: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0.sp),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Incorrect Password',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 2.0.h,
              ),
              Text(
                message,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 2.0.h,
              ),
              const Divider(),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Try Again',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
