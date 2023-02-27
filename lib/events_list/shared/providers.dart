import 'package:events/core/shared/providers.dart';
import 'package:events/events_list/application/event_list_notifier.dart';
import 'package:events/events_list/infrastructure/event_remote_service.dart';
import 'package:events/events_list/infrastructure/event_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final eventListRemoteServiceProvider = Provider(
  (ref) => EventListRemoteService(
    ref.watch(dioProvider),
  ),
);

final eventListRepositoryProvider = Provider(
  (ref) => EventListRepository(
    ref.watch(eventListRemoteServiceProvider),
  ),
);

final eventListNotifierProvider =
    StateNotifierProvider<EventListNotifier, EventListState>(
  (ref) => EventListNotifier(
    ref.watch(eventListRepositoryProvider),
  ),
);
