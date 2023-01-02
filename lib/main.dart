import 'package:flutter/material.dart';
import 'package:memestagram/providers/login_provider.dart';
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
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.black,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
              color: Colors
                  .black), // set backbutton color here which will reflect in all screens.
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
