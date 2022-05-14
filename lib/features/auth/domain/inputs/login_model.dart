import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmaklik/core/base_usecase/usecase.dart';

part 'login_model.freezed.dart';

@freezed
class LoginModel extends BaseParams with _$LoginModel {
  const LoginModel._();

  const factory LoginModel({
    required String email,
    required String password,
  }) = _LoginModel;

}
