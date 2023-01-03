import 'package:flutter/material.dart';
import 'package:memestagram/cloud_functions/server.dart';
import 'package:memestagram/providers/login_provider.dart';
import 'package:memestagram/utils/colors.dart';
import 'package:memestagram/views/login_signup/login.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    initializeDB();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryTextTheme: Typography().black,
        textTheme: Typography().black,
        scaffoldBackgroundColor: AppColors.white,
        tabBarTheme: const TabBarTheme(
          labelColor: AppColors.black,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
          iconTheme: IconThemeData(
            color: AppColors.black,
          ), // set backbutton color here which will reflect in all screens.
        ),
      ),
      home: Sizer(
        builder: (context, orientation, deviceType) {
          return const Login();
        },
      ),
    );
  }
}
