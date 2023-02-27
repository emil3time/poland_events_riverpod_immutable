import 'package:dartz/dartz.dart';
import 'package:events/core/infrastructure/event_data_and_pagination_info.dart';
import 'package:events/core/infrastructure/network_exceptions.dart';
import 'package:events/events_list/domain/event.dart';
import 'package:events/events_list/domain/eventbrite_failures.dart';
import 'package:events/events_list/infrastructure/event_remote_service.dart';
import 'package:events/core/infrastructure/extensions.dart';

class EventListRepository {
  final EventListRemoteService _remoteService;

  EventListRepository(this._remoteService);

  Future<Either<EventbriteFailures, EventDataAndPaginationInfo<List<Event>>>>
      getEventPage() async {
    try {
      final remotePageItem = await _remoteService.getPage();

      return right(
        remotePageItem.when(
          noConnection: () => EventDataAndPaginationInfo(
            data: [],
            hasMorePages: false,
            isNoConnection: true,
          ),
          witchNewData: (data, hasMorePages) =>
              // data.map((e) => e.toDomain()).toList(), now from extension to toDomain
              EventDataAndPaginationInfo(
            data: data.toDomain(),
            hasMorePages: hasMorePages,
            isNoConnection: false,
          ),
        ),
      );
    } on RestApiException catch (e) {
      return left(EventbriteFailures.api(e.errorCode));
    }
  }
}
