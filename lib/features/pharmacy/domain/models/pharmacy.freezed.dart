// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pharmacy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Pharmacy {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PharmacyCopyWith<Pharmacy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyCopyWith<$Res> {
  factory $PharmacyCopyWith(Pharmacy value, $Res Function(Pharmacy) then) =
      _$PharmacyCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String image,
      String location,
      String description,
      double lat,
      double lng});
}

/// @nodoc
class _$PharmacyCopyWithImpl<$Res> implements $PharmacyCopyWith<$Res> {
  _$PharmacyCopyWithImpl(this._value, this._then);

  final Pharmacy _value;
  // ignore: unused_field
  final $Res Function(Pharmacy) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_PharmacyCopyWith<$Res> implements $PharmacyCopyWith<$Res> {
  factory _$$_PharmacyCopyWith(
          _$_Pharmacy value, $Res Function(_$_Pharmacy) then) =
      __$$_PharmacyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String image,
      String location,
      String description,
      double lat,
      double lng});
}

/// @nodoc
class __$$_PharmacyCopyWithImpl<$Res> extends _$PharmacyCopyWithImpl<$Res>
    implements _$$_PharmacyCopyWith<$Res> {
  __$$_PharmacyCopyWithImpl(
      _$_Pharmacy _value, $Res Function(_$_Pharmacy) _then)
      : super(_value, (v) => _then(v as _$_Pharmacy));

  @override
  _$_Pharmacy get _value => super._value as _$_Pharmacy;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_Pharmacy(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Pharmacy extends _Pharmacy {
  const _$_Pharmacy(
      {required this.name,
      required this.image,
      required this.location,
      required this.description,
      required this.lat,
      required this.lng})
      : super._();

  @override
  final String name;
  @override
  final String image;
  @override
  final String location;
  @override
  final String description;
  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'Pharmacy(name: $name, image: $image, location: $location, description: $description, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pharmacy &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng));

  @JsonKey(ignore: true)
  @override
  _$$_PharmacyCopyWith<_$_Pharmacy> get copyWith =>
      __$$_PharmacyCopyWithImpl<_$_Pharmacy>(this, _$identity);
}

abstract class _Pharmacy extends Pharmacy {
  const factory _Pharmacy(
      {required final String name,
      required final String image,
      required final String location,
      required final String description,
      required final double lat,
      required final double lng}) = _$_Pharmacy;
  const _Pharmacy._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  double get lng => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyCopyWith<_$_Pharmacy> get copyWith =>
      throw _privateConstructorUsedError;
}
