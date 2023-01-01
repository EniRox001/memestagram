// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memestagram/cloud_functions/server.dart';
import 'package:memestagram/providers/login_provider.dart';
import 'package:memestagram/views/login_signup/signup.dart';
import 'package:memestagram/widgets/common/w_divider.dart';
import 'package:memestagram/widgets/common/w_elevated_button.dart';
import 'package:memestagram/widgets/common/w_textfield.dart';
import 'package:memestagram/widgets/common/w_textspan.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

class LoginMobile extends StatefulWidget {
  const LoginMobile(
      {super.key,
      this.deviceDomain,
      required this.usernameController,
      required this.passwordController});
  // ignore: prefer_typing_uninitialized_variables
  final deviceDomain;
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.sp),
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              'Memestagram',
              style: GoogleFonts.raleway(
                textStyle: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          SizedBox(height: 3.5.h),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.blueAccent,
                      ),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          WElevatedButton(
            onPressed: () async {
              await login(context).then(
                (value) =>
                    context.read<LoginProvider>().setLoginResponse(value),
              );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    context.read<LoginProvider>().response,
                  ),
                ),
              );
            },
            text: 'Log in',
          ),
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
          const WDivider(text: "OR"),
          SizedBox(height: 1.5.h),
          WTextSpan(
            textOne: 'Don\'t have an account? ',
            textTwo: 'Sign up',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Signup(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
