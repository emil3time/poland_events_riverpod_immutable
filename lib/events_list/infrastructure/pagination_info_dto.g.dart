// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationInfoDTO _$$_PaginationInfoDTOFromJson(Map<String, dynamic> json) =>
    _$_PaginationInfoDTO(
      continuation: _preventNull(json['continuation']),
      hasMoreItems: json['has_more_items'] as bool,
      numberOfPages: json['page_count'] as int,
      pageNumber: json['page_number'] as int,
      pageSize: json['page_size'] as int,
    );

Map<String, dynamic> _$$_PaginationInfoDTOToJson(
        _$_PaginationInfoDTO instance) =>
    <String, dynamic>{
      'continuation': instance.continuation,
      'has_more_items': instance.hasMoreItems,
      'page_count': instance.numberOfPages,
      'page_number': instance.pageNumber,
      'page_size': instance.pageSize,
    };
