import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_availability.freezed.dart';

@freezed
class TicketAvailability with _$TicketAvailability {
  const TicketAvailability._();
  const factory TicketAvailability({
    required bool isFree,
    required bool isSoldOut,
  }) = _TicketAvailability;
}
