import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:pharmaklik/features/auth/domain/repository/i_auth_facade.dart';

part 'app_event.dart';

part 'app_state.dart';

part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final IAuthFacade authFacade;
  AppBloc(this.authFacade) : super(AppState.initial()){
    on<InitialEvent>(_onInitialEvent);
  }
  void _onInitialEvent(InitialEvent event, Emitter<AppState> emit) {
    emit(state.copyWith(
      isAuthenticated: authFacade.isAuthenticated(),
    ));
  }
}
