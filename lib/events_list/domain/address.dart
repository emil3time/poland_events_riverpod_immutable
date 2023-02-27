import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';

@freezed
class Address with _$Address {
  const Address._();
  const factory Address({
    required String city,
    required String addressWitchPostCode,
    // required double latitude,
    // required double longitude,
  }) = _Address;
}
