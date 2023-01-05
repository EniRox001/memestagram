import 'package:flutter/material.dart';
import 'package:memestagram/providers/form_providers.dart';
import 'package:memestagram/utils/colors.dart';

import 'package:provider/provider.dart';
import 'package:memestagram/utils/validators.dart';

class WStockInputField extends StatelessWidget {
  const WStockInputField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.onChanged,
      this.validator})
      : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final String Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
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
        onChanged: onChanged,
        validator: validator);
  }
}
