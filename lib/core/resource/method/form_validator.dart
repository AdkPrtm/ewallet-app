bool emailValidator(String email) {
  bool emailValid =
      RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(email);
  if (emailValid) {
    return true;
  } else {
    return false;
  }
}

String? passwordValidator(String value) {
  RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  var passNonNullValue = value;
  if (passNonNullValue.isEmpty) {
    return ("Password is required");
  } else if (passNonNullValue.length < 8) {
    return ("Password Must be more than 8 characters");
  } else if (!regex.hasMatch(passNonNullValue)) {
    return ("Password should contain upper,lower,digit and Special character");
  }
  return null;
}
