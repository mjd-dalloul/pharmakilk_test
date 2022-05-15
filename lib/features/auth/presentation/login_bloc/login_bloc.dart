import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmaklik/core/validator/base_validator.dart';
import 'package:pharmaklik/features/auth/domain/inputs/login_model.dart';
import 'package:pharmaklik/features/auth/domain/usecase/login.dart';

import '../../../../core/failures/failure.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final Login login;
  LoginBloc(this.login) : super(LoginState.initial()){
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginRequested>(_onLoginRequested);
  }
  void _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(
      loginModel: state.loginModel.copyWith(email: event.value),
      optionOfFailureOrSuccess: none(),
    ));
  }
  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(
      loginModel: state.loginModel.copyWith(password: event.value),
      optionOfFailureOrSuccess: none(),
    ));
  }
  void _onLoginRequested(LoginRequested event, Emitter<LoginState> emit) async {
    if(event.validForm) {
      emit(state.copyWith(
        isLoading: true,
        optionOfFailureOrSuccess: none(),
      ));
      final res = await login(state.loginModel);
      emit(state.copyWith(
        isLoading: false,
        optionOfFailureOrSuccess: optionOf(res),
        showErrorMessage: true,
      ));
    } else {
      emit(state.copyWith(
        showErrorMessage: true,
      ));
    }
  }
}
