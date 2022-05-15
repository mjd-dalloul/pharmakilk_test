import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmaklik/features/auth/domain/usecase/register.dart';

import '../../../../core/failures/failure.dart';
import '../../domain/inputs/register_model.dart';

part 'register_event.dart';

part 'register_state.dart';

part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final Register register;

  RegisterBloc(this.register) : super(RegisterState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<FirstNameChanged>(_onFirstNameChanged);
    on<LastNameChanged>(_onLastNameChanged);
    on<RegisterRequested>(_onRegisterRequested);
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(
      registerModel: state.registerModel.copyWith(password: event.value),
      optionOfFailureOrSuccess: none(),
    ));
  }

  void _onEmailChanged(EmailChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(
      registerModel: state.registerModel.copyWith(email: event.value),
      optionOfFailureOrSuccess: none(),
    ));
  }

  void _onFirstNameChanged(
      FirstNameChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(
      registerModel: state.registerModel.copyWith(firstName: event.value),
      optionOfFailureOrSuccess: none(),
    ));
  }

  void _onLastNameChanged(LastNameChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(
      registerModel: state.registerModel.copyWith(lastName: event.value),
      optionOfFailureOrSuccess: none(),
    ));
  }

  void _onRegisterRequested(
      RegisterRequested event, Emitter<RegisterState> emit) async {
    if(event.validForm) {
      emit(state.copyWith(
        isLoading: true,
        optionOfFailureOrSuccess: none(),
      ));
      final res = await register(state.registerModel);
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
