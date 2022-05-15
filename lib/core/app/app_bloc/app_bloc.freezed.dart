// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticateCheckRequested,
    required TResult Function() logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticateCheckRequested,
    TResult Function()? logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticateCheckRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticateCheckRequested value)
        authenticateCheckRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticateCheckRequested value)?
        authenticateCheckRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticateCheckRequested value)?
        authenticateCheckRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$$AuthenticateCheckRequestedCopyWith<$Res> {
  factory _$$AuthenticateCheckRequestedCopyWith(
          _$AuthenticateCheckRequested value,
          $Res Function(_$AuthenticateCheckRequested) then) =
      __$$AuthenticateCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateCheckRequestedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$$AuthenticateCheckRequestedCopyWith<$Res> {
  __$$AuthenticateCheckRequestedCopyWithImpl(
      _$AuthenticateCheckRequested _value,
      $Res Function(_$AuthenticateCheckRequested) _then)
      : super(_value, (v) => _then(v as _$AuthenticateCheckRequested));

  @override
  _$AuthenticateCheckRequested get _value =>
      super._value as _$AuthenticateCheckRequested;
}

/// @nodoc

class _$AuthenticateCheckRequested implements AuthenticateCheckRequested {
  const _$AuthenticateCheckRequested();

  @override
  String toString() {
    return 'AppEvent.authenticateCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticateCheckRequested,
    required TResult Function() logoutRequested,
  }) {
    return authenticateCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticateCheckRequested,
    TResult Function()? logoutRequested,
  }) {
    return authenticateCheckRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticateCheckRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (authenticateCheckRequested != null) {
      return authenticateCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticateCheckRequested value)
        authenticateCheckRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
  }) {
    return authenticateCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticateCheckRequested value)?
        authenticateCheckRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
  }) {
    return authenticateCheckRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticateCheckRequested value)?
        authenticateCheckRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (authenticateCheckRequested != null) {
      return authenticateCheckRequested(this);
    }
    return orElse();
  }
}

abstract class AuthenticateCheckRequested implements AppEvent {
  const factory AuthenticateCheckRequested() = _$AuthenticateCheckRequested;
}

/// @nodoc
abstract class _$$LogoutRequestedCopyWith<$Res> {
  factory _$$LogoutRequestedCopyWith(
          _$LogoutRequested value, $Res Function(_$LogoutRequested) then) =
      __$$LogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutRequestedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$LogoutRequestedCopyWith<$Res> {
  __$$LogoutRequestedCopyWithImpl(
      _$LogoutRequested _value, $Res Function(_$LogoutRequested) _then)
      : super(_value, (v) => _then(v as _$LogoutRequested));

  @override
  _$LogoutRequested get _value => super._value as _$LogoutRequested;
}

/// @nodoc

class _$LogoutRequested implements LogoutRequested {
  const _$LogoutRequested();

  @override
  String toString() {
    return 'AppEvent.logoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticateCheckRequested,
    required TResult Function() logoutRequested,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticateCheckRequested,
    TResult Function()? logoutRequested,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticateCheckRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticateCheckRequested value)
        authenticateCheckRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticateCheckRequested value)?
        authenticateCheckRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticateCheckRequested value)?
        authenticateCheckRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class LogoutRequested implements AppEvent {
  const factory LogoutRequested() = _$LogoutRequested;
}

/// @nodoc
mixin _$AppState {
  bool get isAuthenticated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({bool isAuthenticated});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? isAuthenticated = freezed,
  }) {
    return _then(_value.copyWith(
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isAuthenticated});
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, (v) => _then(v as _$_AppState));

  @override
  _$_AppState get _value => super._value as _$_AppState;

  @override
  $Res call({
    Object? isAuthenticated = freezed,
  }) {
    return _then(_$_AppState(
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState({required this.isAuthenticated});

  @override
  final bool isAuthenticated;

  @override
  String toString() {
    return 'AppState(isAuthenticated: $isAuthenticated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            const DeepCollectionEquality()
                .equals(other.isAuthenticated, isAuthenticated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isAuthenticated));

  @JsonKey(ignore: true)
  @override
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState({required final bool isAuthenticated}) = _$_AppState;

  @override
  bool get isAuthenticated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
