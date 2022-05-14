import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmaklik/core/base_usecase/usecase.dart';

part 'register_model.freezed.dart';

@freezed
class RegisterModel extends BaseParams with _$RegisterModel {
  const RegisterModel._();

  const factory RegisterModel({
    required String firstName,
    required String lastName,
    required String password,
    required String email,
  }) = _RegisterModel;

  factory RegisterModel.empty() => const RegisterModel(
        firstName: '',
        lastName: '',
        password: '',
        email: '',
      );
}
