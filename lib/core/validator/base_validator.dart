import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:pharmaklik/core/validator/validation_exception.dart';

abstract class IBusinessRule<Input> {
  bool call(Input input);
}

class Validator {
  static Either<ValidationException, Unit> validateRules<Input>(
      List<IBusinessRule> businessRoles, Input input) {
    try {
      for(IBusinessRule rule in businessRoles) {
        rule(input);
      }
      return right(unit);
    } on ValidationException catch (e) {
      return left(e);
    }
  }
}
