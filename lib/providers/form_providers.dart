import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormProviders extends ChangeNotifier {
  bool _validatedField = false;
  bool _validatedPhoneField = false;
  String _countryCode = "234";

  bool get validatedField => _validatedField;
  bool get validatedPhoneField => _validatedPhoneField;
  String get countryCode => _countryCode;

  void setValidateField(bool value) {
    _validatedField = value;
    notifyListeners();
  }

  void setValidatePhoneField(bool value) {
    _validatedPhoneField = value;
    notifyListeners();
  }

  void setCountryCode(String value) {
    _countryCode = value;
    notifyListeners();
  }
}

String validateEmailProvider(String val, BuildContext context) {
  if (val.isEmpty || !val.contains("@")) {
    context.read<FormProviders>().setValidateField(false);
  } else {
    context.read<FormProviders>().setValidateField(true);
  }
  return '';
}

void validatePhoneProvider(String val, BuildContext context) {
  context.read<FormProviders>().setValidatePhoneField(true);
}
