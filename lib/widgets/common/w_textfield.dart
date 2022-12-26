import 'package:flutter/material.dart';
import 'package:memestagram/enums/responsive.dart';
import 'package:sizer/sizer.dart';

class WTextField extends StatelessWidget {
  const WTextField(
      {Key? key,
      required this.controller,
      required this.deviceDomain,
      required this.hintText})
      : super(key: key);

  // ignore: prefer_typing_uninitialized_variables

  // ignore: prefer_typing_uninitialized_variables
  final deviceDomain;
  final TextEditingController controller;

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.5.h,
      child: TextFormField(
        controller: controller,
        style: TextStyle(
          fontSize: deviceDomain == PlatformDomains.desktopWeb
              ? 2.7.sp
              : deviceDomain == PlatformDomains.tabletWeb
                  ? 4.7.sp
                  : 10.0.sp,
        ),
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          errorStyle: const TextStyle(fontSize: 10.0),
          isDense: false,
          filled: true,
          fillColor: const Color(0xFFFAFAFA),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: deviceDomain == PlatformDomains.desktopWeb
                ? 2.7.sp
                : deviceDomain == PlatformDomains.tabletWeb
                    ? 4.7.sp
                    : 10.0.sp,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1.0.sp),
          ),
        ),
      ),
    );
  }
}
