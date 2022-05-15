part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.authenticateCheckRequested() = AuthenticateCheckRequested;
  const factory AppEvent.logoutRequested() = LogoutRequested;

}
