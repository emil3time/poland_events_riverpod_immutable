// ignore_for_file: invalid_annotation_target

import 'package:events/events_list/domain/pagination_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_info_dto.freezed.dart';
part 'pagination_info_dto.g.dart';

String _preventNull(Object? json) {
  return (json as String?) ?? '';
}

@freezed
class PaginationInfoDTO with _$PaginationInfoDTO {
  const PaginationInfoDTO._();
  const factory PaginationInfoDTO({
    @JsonKey(fromJson: _preventNull) required String continuation,
    @JsonKey(name: 'has_more_items') required bool hasMoreItems,
    @JsonKey(name: 'page_count') required int numberOfPages,
    @JsonKey(name: 'page_number') required int pageNumber,
    @JsonKey(name: 'page_size') required int pageSize,
  }) = _PaginationInfoDTO;

  factory PaginationInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$PaginationInfoDTOFromJson(json);

  PaginationInfo toDomain() {
    return PaginationInfo(
      continuationToken: continuation,
      hasMoreItems: hasMoreItems,
      numberOfPages: numberOfPages,
      pageNumber: pageNumber,
      pageSize: pageSize,
    );
  }
}
