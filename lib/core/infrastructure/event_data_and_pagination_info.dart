import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_data_and_pagination_info.freezed.dart';

@freezed
class EventDataAndPaginationInfo<T> with _$EventDataAndPaginationInfo<T> {
  const factory EventDataAndPaginationInfo({
    required T data,
    required bool hasMorePages,
    required bool isNoConnection,
  }) = _EventDataAndPaginationInfo<T>;

  const EventDataAndPaginationInfo._();
}
