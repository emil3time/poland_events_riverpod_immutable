import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_info.freezed.dart';

@freezed
class PaginationInfo with _$PaginationInfo {
  const PaginationInfo._();
  const factory PaginationInfo({
    required String continuationToken,
    required bool hasMoreItems,
    required int numberOfPages,
    required int pageNumber,
    required int pageSize,
  }) = _PaginationInfo;
}
