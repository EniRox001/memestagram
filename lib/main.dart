import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memestagram/enums/responsive.dart';
import 'package:memestagram/views/login_signup/login.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

var deviceDomain = getSizeDomain();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Sizer(
        builder: (context, orientation, deviceType) {
          return const Login();
        },
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: deviceDomain == PlatformDomains.mobileWeb
            ? Colors.green
            : deviceDomain == PlatformDomains.tabletWeb
                ? Colors.red
                : deviceDomain == PlatformDomains.desktopWeb
                    ? Colors.amberAccent
                    : Colors.cyan,
        title: Text(
          'Memestagram',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(),
        ),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              deviceDomain.toString(),
              style: GoogleFonts.raleway(
                textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                getSizeDomain();
              },
              child: const Text(
                'Enumize',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
