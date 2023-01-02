import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memestagram/widgets/common/w_elevated_button.dart';
import 'package:memestagram/widgets/mobile/signup_mobile_two.dart';
import 'package:sizer/sizer.dart';

class SignupMobileOne extends StatefulWidget {
  const SignupMobileOne({super.key});

  @override
  State<SignupMobileOne> createState() => _SignupMobileOneState();
}

class _SignupMobileOneState extends State<SignupMobileOne> {
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
          SizedBox(
            height: 5.0.h,
          ),
          WElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignupMobileTwo(),
                ),
              );
            },
            text: 'Create new account',
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Log in',
            ),
          ),
        ],
      ),
    );
  }
}
