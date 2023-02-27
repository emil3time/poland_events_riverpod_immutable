// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_availability_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketAvailabilityDTO _$$_TicketAvailabilityDTOFromJson(
        Map<String, dynamic> json) =>
    _$_TicketAvailabilityDTO(
      isSoldOut: json['is_sold_out'] as bool,
      isFree: json['is_free'] as bool,
    );

Map<String, dynamic> _$$_TicketAvailabilityDTOToJson(
        _$_TicketAvailabilityDTO instance) =>
    <String, dynamic>{
      'is_sold_out': instance.isSoldOut,
      'is_free': instance.isFree,
    };
