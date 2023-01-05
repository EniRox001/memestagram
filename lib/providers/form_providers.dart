import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormProviders extends ChangeNotifier {
  bool _validatedField = false;
  bool _validatedPhoneField = false;

  bool get validatedField => _validatedField;
  bool get validatedPhoneField => _validatedPhoneField;

  void setValidateField(bool value) {
    _validatedField = value;
    notifyListeners();
  }

  void setValidatePhoneField(bool value) {
    _validatedPhoneField = value;
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
