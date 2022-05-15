part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.emailChanged(String value) = EmailChanged;
  const factory RegisterEvent.passwordChanged(String value) = PasswordChanged;
  const factory RegisterEvent.firstNameChanged(String value) = FirstNameChanged;
  const factory RegisterEvent.lastNameChanged(String value) = LastNameChanged;
  const factory RegisterEvent.registerUserRequested(bool validForm) = RegisterRequested;
}
