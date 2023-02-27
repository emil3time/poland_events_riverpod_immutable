import 'package:events/events_list/domain/event.dart';
import 'package:events/events_list/infrastructure/image_dto.dart';
import 'package:events/events_list/infrastructure/primary_venue_dto.dart';
import 'package:events/events_list/infrastructure/ticket_availability_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_dto.freezed.dart';
part 'event_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class EventDTO with _$EventDTO {
  const EventDTO._();
  const factory EventDTO({
    required String name,
    required String status,
    @JsonKey(name: 'summary') required String description,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'primary_venue') required PrimaryVenueDTO primaryVenue,
    @JsonKey(name: 'tickets_url') required String ticketUrl,
    @JsonKey(name: 'ticket_availability')
        required TicketAvailabilityDTO ticketAvailability,
    required ImageUrlDTO image,
  }) = _EventDTO;

  factory EventDTO.fromJson(Map<String, dynamic> json) =>
      _$EventDTOFromJson(json);

/*   factory EventDTO.fromDomain(Event _) {
    return EventDTO(
        name: _.name,
        description: _.description,
        imgeUrl: _.imgeUrl,
        date: _.date,
        adress: _.adress,
        startTime: _.startTime,
        status: _.status,
        numFolloewrs: _.numFolloewrs,
       ticket: );
  }*/

  Event toDomain() {
    return Event(
      name: name,
      description: description,
      startDate: startDate,
      startTime: startTime,
      status: status,
      primaryVenue: primaryVenue.toDomain(),
      ticketAvailability: ticketAvailability.toDomain(),
      ticketUrl: ticketUrl,
      imageUrl: image.toDomain(),
    );
  }
}
