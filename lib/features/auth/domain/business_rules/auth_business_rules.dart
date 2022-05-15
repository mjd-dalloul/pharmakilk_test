import 'package:pharmaklik/core/validator/base_validator.dart';
import 'package:pharmaklik/core/validator/validation_exception.dart';

class StringIsEmail implements IBusinessRule<String> {
  StringIsEmail();

  @override
  bool call(String input) {
    if (RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(input)) {
      return true;
    }
    throw const ValidationException.invalidEmail();
  }
}

class PasswordLength implements IBusinessRule<String> {
  static const int _length = 5;
  @override
  bool call(String input) {
    if(input.length >= _length) return true;
    throw const ValidationException.shortPassword();
  }
}
class RequiredField implements IBusinessRule<String> {
  @override
  bool call(String input) {
    if(input.isNotEmpty) return true;
    throw const ValidationException.requiredField();
  }
}