import 'package:events/events_list/domain/primary_venue.dart';
import 'package:events/events_list/infrastructure/address_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'primary_venue_dto.freezed.dart';
part 'primary_venue_dto.g.dart';

@freezed
class PrimaryVenueDTO with _$PrimaryVenueDTO {
  const PrimaryVenueDTO._();
  const factory PrimaryVenueDTO({
    required AddressDTO address,
  }) = _PrimaryVenueDTO;

  factory PrimaryVenueDTO.fromJson(Map<String, dynamic> json) =>
      _$PrimaryVenueDTOFromJson(json);

  PrimaryVenue toDomain() {
    return PrimaryVenue(
      address: address.toDomain(),
    );
  }
}
