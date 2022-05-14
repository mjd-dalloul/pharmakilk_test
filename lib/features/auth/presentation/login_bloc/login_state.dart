part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    required LoginModel loginModel,
    required bool showErrorMessage,
    required Option<Either<Failure, Unit>> optionOfFailureOrSuccess,
   }) = _LoginState;

  factory LoginState.initial() => LoginState(
    isLoading: false,
    showErrorMessage: false,
    loginModel: LoginModel.empty(),
    optionOfFailureOrSuccess: none(),
   );
}
