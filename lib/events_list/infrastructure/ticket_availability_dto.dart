// ignore_for_file: invalid_annotation_target

import 'package:events/events_list/domain/ticket_availability.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_availability_dto.freezed.dart';
part 'ticket_availability_dto.g.dart';

@freezed
class TicketAvailabilityDTO with _$TicketAvailabilityDTO {
  const TicketAvailabilityDTO._();
  const factory TicketAvailabilityDTO({
    @JsonKey(name: 'is_sold_out') required bool isSoldOut,
    @JsonKey(name: 'is_free') required bool isFree,
  }) = _TicketAvailabilityDTO;

  factory TicketAvailabilityDTO.fromJson(Map<String, dynamic> json) =>
      _$TicketAvailabilityDTOFromJson(json);

  TicketAvailability toDomain() {
    return TicketAvailability(isFree: isFree, isSoldOut: isSoldOut);
  }
}
