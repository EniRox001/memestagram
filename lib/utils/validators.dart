//validate email based on the email given in the formfield

String? validateEmail(String? val) {
  if (val!.isEmpty || !val.contains("@")) {
    return "Enter a valid emaill";
  } else {
    return null;
  }
}

String? nullValidate(String? val) {
  return null;
}

String? nullOnchanged(String? val) {
  return null;
}
