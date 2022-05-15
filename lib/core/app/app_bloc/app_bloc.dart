
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmaklik/features/auth/domain/repository/i_auth_facade.dart';

part 'app_event.dart';

part 'app_state.dart';

part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final IAuthFacade authFacade;
  AppBloc(this.authFacade) : super(AppState.initial()){
    on<AuthenticateCheckRequested>(_onAuthenticateCheckRequested);
  }
  void _onAuthenticateCheckRequested(AuthenticateCheckRequested event, Emitter<AppState> emit) {
    emit(state.copyWith(
      isAuthenticated: authFacade.isAuthenticated(),
    ));
  }
}
