import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy.freezed.dart';

@freezed
class Pharmacy with _$Pharmacy {
  const Pharmacy._();

  const factory Pharmacy({
    required String name,
    required String image,
    required String location,
    required String description,
    required double lat,
    required double lng,
  }) = _Pharmacy;

}
