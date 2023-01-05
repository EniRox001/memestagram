import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:memestagram/utils/colors.dart';

class WPhoneInputField extends StatelessWidget {
  const WPhoneInputField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: controller,
      initialCountryCode: 'NG',
      flagsButtonMargin: const EdgeInsets.only(left: 20.0),
      flagsButtonPadding: const EdgeInsets.only(right: 10.0),
      showCountryFlag: true,
      showDropdownIcon: false,
      pickerDialogStyle: PickerDialogStyle(
        searchFieldPadding: EdgeInsets.zero,
        searchFieldInputDecoration: InputDecoration(
          hintText: 'Search Country',
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
      ),
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
      onChanged: (phone) {},
    );
  }
}
