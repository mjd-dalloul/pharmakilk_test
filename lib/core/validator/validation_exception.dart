import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_exception.freezed.dart';

@freezed
class ValidationException with _$ValidationException implements Exception  {
  const factory ValidationException.invalidEmail() = InvalidEmail;
  const factory ValidationException.shortPassword() = ShortPassword;
  const factory ValidationException.requiredField() = RequiredField;
}