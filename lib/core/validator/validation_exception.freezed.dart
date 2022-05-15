// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'validation_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValidationException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() shortPassword,
    required TResult Function() requiredField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? shortPassword,
    TResult Function()? requiredField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? shortPassword,
    TResult Function()? requiredField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(ShortPassword value) shortPassword,
    required TResult Function(RequiredField value) requiredField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(ShortPassword value)? shortPassword,
    TResult Function(RequiredField value)? requiredField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(ShortPassword value)? shortPassword,
    TResult Function(RequiredField value)? requiredField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationExceptionCopyWith<$Res> {
  factory $ValidationExceptionCopyWith(
          ValidationException value, $Res Function(ValidationException) then) =
      _$ValidationExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValidationExceptionCopyWithImpl<$Res>
    implements $ValidationExceptionCopyWith<$Res> {
  _$ValidationExceptionCopyWithImpl(this._value, this._then);

  final ValidationException _value;
  // ignore: unused_field
  final $Res Function(ValidationException) _then;
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<$Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail value, $Res Function(_$InvalidEmail) then) =
      __$$InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<$Res>
    extends _$ValidationExceptionCopyWithImpl<$Res>
    implements _$$InvalidEmailCopyWith<$Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail _value, $Res Function(_$InvalidEmail) _then)
      : super(_value, (v) => _then(v as _$InvalidEmail));

  @override
  _$InvalidEmail get _value => super._value as _$InvalidEmail;
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail();

  @override
  String toString() {
    return 'ValidationException.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() shortPassword,
    required TResult Function() requiredField,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? shortPassword,
    TResult Function()? requiredField,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? shortPassword,
    TResult Function()? requiredField,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(ShortPassword value) shortPassword,
    required TResult Function(RequiredField value) requiredField,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(ShortPassword value)? shortPassword,
    TResult Function(RequiredField value)? requiredField,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(ShortPassword value)? shortPassword,
    TResult Function(RequiredField value)? requiredField,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements ValidationException {
  const factory InvalidEmail() = _$InvalidEmail;
}

/// @nodoc
abstract class _$$ShortPasswordCopyWith<$Res> {
  factory _$$ShortPasswordCopyWith(
          _$ShortPassword value, $Res Function(_$ShortPassword) then) =
      __$$ShortPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShortPasswordCopyWithImpl<$Res>
    extends _$ValidationExceptionCopyWithImpl<$Res>
    implements _$$ShortPasswordCopyWith<$Res> {
  __$$ShortPasswordCopyWithImpl(
      _$ShortPassword _value, $Res Function(_$ShortPassword) _then)
      : super(_value, (v) => _then(v as _$ShortPassword));

  @override
  _$ShortPassword get _value => super._value as _$ShortPassword;
}

/// @nodoc

class _$ShortPassword implements ShortPassword {
  const _$ShortPassword();

  @override
  String toString() {
    return 'ValidationException.shortPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShortPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() shortPassword,
    required TResult Function() requiredField,
  }) {
    return shortPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? shortPassword,
    TResult Function()? requiredField,
  }) {
    return shortPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? shortPassword,
    TResult Function()? requiredField,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(ShortPassword value) shortPassword,
    required TResult Function(RequiredField value) requiredField,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(ShortPassword value)? shortPassword,
    TResult Function(RequiredField value)? requiredField,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(ShortPassword value)? shortPassword,
    TResult Function(RequiredField value)? requiredField,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword implements ValidationException {
  const factory ShortPassword() = _$ShortPassword;
}

/// @nodoc
abstract class _$$RequiredFieldCopyWith<$Res> {
  factory _$$RequiredFieldCopyWith(
          _$RequiredField value, $Res Function(_$RequiredField) then) =
      __$$RequiredFieldCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequiredFieldCopyWithImpl<$Res>
    extends _$ValidationExceptionCopyWithImpl<$Res>
    implements _$$RequiredFieldCopyWith<$Res> {
  __$$RequiredFieldCopyWithImpl(
      _$RequiredField _value, $Res Function(_$RequiredField) _then)
      : super(_value, (v) => _then(v as _$RequiredField));

  @override
  _$RequiredField get _value => super._value as _$RequiredField;
}

/// @nodoc

class _$RequiredField implements RequiredField {
  const _$RequiredField();

  @override
  String toString() {
    return 'ValidationException.requiredField()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequiredField);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() shortPassword,
    required TResult Function() requiredField,
  }) {
    return requiredField();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? shortPassword,
    TResult Function()? requiredField,
  }) {
    return requiredField?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? shortPassword,
    TResult Function()? requiredField,
    required TResult orElse(),
  }) {
    if (requiredField != null) {
      return requiredField();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(ShortPassword value) shortPassword,
    required TResult Function(RequiredField value) requiredField,
  }) {
    return requiredField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(ShortPassword value)? shortPassword,
    TResult Function(RequiredField value)? requiredField,
  }) {
    return requiredField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(ShortPassword value)? shortPassword,
    TResult Function(RequiredField value)? requiredField,
    required TResult orElse(),
  }) {
    if (requiredField != null) {
      return requiredField(this);
    }
    return orElse();
  }
}

abstract class RequiredField implements ValidationException {
  const factory RequiredField() = _$RequiredField;
}
