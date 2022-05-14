part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required bool isLoading,
    required RegisterModel registerModel,
    required bool showErrorMessage,
    required Option<Either<Failure, Unit>> optionOfFailureOrSuccess,
   }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
    isLoading: false,
    showErrorMessage: false,
    registerModel: RegisterModel.empty(),
    optionOfFailureOrSuccess: none(),
   );
}
