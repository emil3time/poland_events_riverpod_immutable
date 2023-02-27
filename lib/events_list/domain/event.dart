import 'package:events/events_list/domain/image_url.dart';
import 'package:events/events_list/domain/primary_venue.dart';
import 'package:events/events_list/domain/ticket_availability.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class Event with _$Event {
  const Event._();
  const factory Event({
    required String name,
    required String description,
    required String startDate,
    required String startTime,
    required String status,
    required PrimaryVenue primaryVenue,
    required TicketAvailability ticketAvailability,
    required String ticketUrl,
    required ImageUrl imageUrl,
  }) = _Event;
}
