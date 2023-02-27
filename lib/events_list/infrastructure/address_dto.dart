// ignore_for_file: invalid_annotation_target

import 'package:events/events_list/domain/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

@freezed
class AddressDTO with _$AddressDTO {
  const AddressDTO._();
  const factory AddressDTO({
    required String city,
    @JsonKey(name: 'localized_address_display')
        required String addressWitchPostCode,
    // required double latitude,
    // required double longitude,
  }) = _AddressDTO;

  factory AddressDTO.fromJson(Map<String, dynamic> json) =>
      _$AddressDTOFromJson(json);

  Address toDomain() {
    return Address(
      city: city,
      addressWitchPostCode: addressWitchPostCode,
      // latitude: latitude,
      // longitude: longitude,
    );
  }
}
