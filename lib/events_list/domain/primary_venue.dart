import 'package:events/events_list/domain/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'primary_venue.freezed.dart';

@freezed
class PrimaryVenue with _$PrimaryVenue {
  const PrimaryVenue._();
  const factory PrimaryVenue({
    required Address address,
  }) = _PrimaryVenue;
}
