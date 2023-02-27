// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventDTO _$$_EventDTOFromJson(Map<String, dynamic> json) => _$_EventDTO(
      name: json['name'] as String,
      status: json['status'] as String,
      description: json['summary'] as String,
      startDate: json['start_date'] as String,
      startTime: json['start_time'] as String,
      primaryVenue: PrimaryVenueDTO.fromJson(
          json['primary_venue'] as Map<String, dynamic>),
      ticketUrl: json['tickets_url'] as String,
      ticketAvailability: TicketAvailabilityDTO.fromJson(
          json['ticket_availability'] as Map<String, dynamic>),
      image: ImageUrlDTO.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EventDTOToJson(_$_EventDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'status': instance.status,
      'summary': instance.description,
      'start_date': instance.startDate,
      'start_time': instance.startTime,
      'primary_venue': instance.primaryVenue,
      'tickets_url': instance.ticketUrl,
      'ticket_availability': instance.ticketAvailability,
      'image': instance.image,
    };
