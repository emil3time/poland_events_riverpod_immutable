import 'package:events/events_list/domain/event.dart';
import 'package:events/events_list/domain/eventbrite_failures.dart';
import 'package:events/events_list/infrastructure/event_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'event_list_notifier.freezed.dart';

@freezed
class EventListState with _$EventListState {
  const EventListState._();
  const factory EventListState.initial({
    required List<Event> data,
  }) = _Initial;
  const factory EventListState.loading({
    required int itemsPerPage,
    required List<Event> data,
  }) = _Loading;
  const factory EventListState.success({
    required List<Event> data,
    required bool hasMorePages,
    required bool isNoConnection,
  }) = _Success;
  const factory EventListState.failure({
    required List<Event> data,
    required EventbriteFailures failures,
  }) = _Failure;
}

class EventListNotifier extends StateNotifier<EventListState> {
  final EventListRepository _repository;

  EventListNotifier(this._repository) : super(EventListState.initial(data: []));

  Future<void> getEventPage() async {
    state = EventListState.loading(
      itemsPerPage: 5,
      data: state.data,
    );

    final failureOrSuccess = await _repository.getEventPage();

    state = failureOrSuccess.fold(
      (l) => EventListState.failure(data: state.data, failures: l),
      (r) {
        return EventListState.success(data: [
          ...state.data,
          ...r.data,
        ], hasMorePages: r.hasMorePages, isNoConnection: r.isNoConnection);
      },
    );
  }
}
