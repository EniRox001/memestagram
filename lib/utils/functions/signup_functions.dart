import 'package:flutter/material.dart';
import 'package:memestagram/cloud_functions/server.dart';
import 'package:memestagram/utils/colors.dart';
import 'package:sizer/sizer.dart';

Future<void> verifyEmail(
    BuildContext context, TextEditingController controller) async {
  await verifyOtp(controller.text).then(
    (value) {
      if (value == 'user with email already exists') {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'This email is on Another Account',
                        style: Theme.of(context).textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 2.0.h,
                      ),
                      const Text(
                        'You can log into the account associated with that email or you can use that email to make a new account.',
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 2.0.h,
                      ),
                      const Divider(
                        color: AppColors.lightDark,
                        thickness: 1.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Log into existing account',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Divider(
                        color: AppColors.lightDark,
                        thickness: 1.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Create new account',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ));
      } else {
        Navigator.pop(context);
      }
    },
  );
}

Future<void> verifyPhoneNumber(BuildContext context, String number) async {
  await verifyOtp(
    number,
  ).then((value) {
    if (value == 'user with number already exists') {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Login as qlie.r?',
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 2.0.h,
                    ),
                    const Text(
                      'It looks like you already have an instagram account.',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 2.0.h,
                    ),
                    const Divider(
                      color: AppColors.lightDark,
                      thickness: 1.0,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Continue as qlie.r',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(
                      color: AppColors.lightDark,
                      thickness: 1.0,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Create new account',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ));
    } else {
      Navigator.pop(context);
    }
  });
}
