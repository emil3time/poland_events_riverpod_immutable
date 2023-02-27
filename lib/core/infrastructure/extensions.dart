import 'package:events/events_list/domain/event.dart';
import 'package:events/events_list/infrastructure/event_dto.dart';

extension DTOListToDomain on List<EventDTO> {
  List<Event> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
