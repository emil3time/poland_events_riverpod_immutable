import 'package:dio/dio.dart';
import 'package:events/core/infrastructure/dio_extensions.dart';
import 'package:events/core/infrastructure/network_exceptions.dart';
import 'package:events/core/infrastructure/data_config.dart';
import 'package:events/core/infrastructure/remote_response.dart';
import 'package:events/events_list/infrastructure/event_dto.dart';
import 'package:events/events_list/infrastructure/pagination_info_dto.dart';

class EventListRemoteService {
  final Dio _dio;

  EventListRemoteService(
    this._dio,
  );
  String? continuationToken;

  String eventbriteEndpoint =
      'https://www.eventbrite.com/api/v3/destination/events/?event_ids=${DataConfig.events}&expand=${DataConfig.expandDataAbout}&page_size=${DataConfig.itemsPerPage}&continuation=';

  Future<RemoteResponse<List<EventDTO>>> getPage() async {
    if (continuationToken == null) continuationToken = '';

    try {
      final response =
          await _dio.getUri(Uri.parse(eventbriteEndpoint + continuationToken!));

      if (response.statusCode == 200) {
        final convertedData =
            List<Map<String, dynamic>>.from(response.data['events'])
                .map((e) => EventDTO.fromJson(e))
                .toList();

        final paginationInfo = PaginationInfoDTO.fromJson(
                Map<String, dynamic>.from(response.data['pagination']))
            .toDomain();

        continuationToken = paginationInfo.continuationToken;

        return RemoteResponse.witchNewData(
          convertedData,
          hasMorePages: paginationInfo.hasMoreItems,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoInternetConnection) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
