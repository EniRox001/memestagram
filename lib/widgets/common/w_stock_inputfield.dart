import 'package:flutter/material.dart';
import 'package:memestagram/utils/colors.dart';

class WStockInputField extends StatelessWidget {
  const WStockInputField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.lightDark,
          ),
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.lighterDark),
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
      ),
    );
  }
}
