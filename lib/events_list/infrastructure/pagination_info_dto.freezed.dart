// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationInfoDTO _$PaginationInfoDTOFromJson(Map<String, dynamic> json) {
  return _PaginationInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$PaginationInfoDTO {
  @JsonKey(fromJson: _preventNull)
  String get continuation => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_more_items')
  bool get hasMoreItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_count')
  int get numberOfPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_number')
  int get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int get pageSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationInfoDTOCopyWith<PaginationInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationInfoDTOCopyWith<$Res> {
  factory $PaginationInfoDTOCopyWith(
          PaginationInfoDTO value, $Res Function(PaginationInfoDTO) then) =
      _$PaginationInfoDTOCopyWithImpl<$Res, PaginationInfoDTO>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _preventNull) String continuation,
      @JsonKey(name: 'has_more_items') bool hasMoreItems,
      @JsonKey(name: 'page_count') int numberOfPages,
      @JsonKey(name: 'page_number') int pageNumber,
      @JsonKey(name: 'page_size') int pageSize});
}

/// @nodoc
class _$PaginationInfoDTOCopyWithImpl<$Res, $Val extends PaginationInfoDTO>
    implements $PaginationInfoDTOCopyWith<$Res> {
  _$PaginationInfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continuation = null,
    Object? hasMoreItems = null,
    Object? numberOfPages = null,
    Object? pageNumber = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      continuation: null == continuation
          ? _value.continuation
          : continuation // ignore: cast_nullable_to_non_nullable
              as String,
      hasMoreItems: null == hasMoreItems
          ? _value.hasMoreItems
          : hasMoreItems // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfPages: null == numberOfPages
          ? _value.numberOfPages
          : numberOfPages // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationInfoDTOCopyWith<$Res>
    implements $PaginationInfoDTOCopyWith<$Res> {
  factory _$$_PaginationInfoDTOCopyWith(_$_PaginationInfoDTO value,
          $Res Function(_$_PaginationInfoDTO) then) =
      __$$_PaginationInfoDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _preventNull) String continuation,
      @JsonKey(name: 'has_more_items') bool hasMoreItems,
      @JsonKey(name: 'page_count') int numberOfPages,
      @JsonKey(name: 'page_number') int pageNumber,
      @JsonKey(name: 'page_size') int pageSize});
}

/// @nodoc
class __$$_PaginationInfoDTOCopyWithImpl<$Res>
    extends _$PaginationInfoDTOCopyWithImpl<$Res, _$_PaginationInfoDTO>
    implements _$$_PaginationInfoDTOCopyWith<$Res> {
  __$$_PaginationInfoDTOCopyWithImpl(
      _$_PaginationInfoDTO _value, $Res Function(_$_PaginationInfoDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continuation = null,
    Object? hasMoreItems = null,
    Object? numberOfPages = null,
    Object? pageNumber = null,
    Object? pageSize = null,
  }) {
    return _then(_$_PaginationInfoDTO(
      continuation: null == continuation
          ? _value.continuation
          : continuation // ignore: cast_nullable_to_non_nullable
              as String,
      hasMoreItems: null == hasMoreItems
          ? _value.hasMoreItems
          : hasMoreItems // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfPages: null == numberOfPages
          ? _value.numberOfPages
          : numberOfPages // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginationInfoDTO extends _PaginationInfoDTO {
  const _$_PaginationInfoDTO(
      {@JsonKey(fromJson: _preventNull) required this.continuation,
      @JsonKey(name: 'has_more_items') required this.hasMoreItems,
      @JsonKey(name: 'page_count') required this.numberOfPages,
      @JsonKey(name: 'page_number') required this.pageNumber,
      @JsonKey(name: 'page_size') required this.pageSize})
      : super._();

  factory _$_PaginationInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationInfoDTOFromJson(json);

  @override
  @JsonKey(fromJson: _preventNull)
  final String continuation;
  @override
  @JsonKey(name: 'has_more_items')
  final bool hasMoreItems;
  @override
  @JsonKey(name: 'page_count')
  final int numberOfPages;
  @override
  @JsonKey(name: 'page_number')
  final int pageNumber;
  @override
  @JsonKey(name: 'page_size')
  final int pageSize;

  @override
  String toString() {
    return 'PaginationInfoDTO(continuation: $continuation, hasMoreItems: $hasMoreItems, numberOfPages: $numberOfPages, pageNumber: $pageNumber, pageSize: $pageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationInfoDTO &&
            (identical(other.continuation, continuation) ||
                other.continuation == continuation) &&
            (identical(other.hasMoreItems, hasMoreItems) ||
                other.hasMoreItems == hasMoreItems) &&
            (identical(other.numberOfPages, numberOfPages) ||
                other.numberOfPages == numberOfPages) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, continuation, hasMoreItems,
      numberOfPages, pageNumber, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationInfoDTOCopyWith<_$_PaginationInfoDTO> get copyWith =>
      __$$_PaginationInfoDTOCopyWithImpl<_$_PaginationInfoDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationInfoDTOToJson(
      this,
    );
  }
}

abstract class _PaginationInfoDTO extends PaginationInfoDTO {
  const factory _PaginationInfoDTO(
          {@JsonKey(fromJson: _preventNull) required final String continuation,
          @JsonKey(name: 'has_more_items') required final bool hasMoreItems,
          @JsonKey(name: 'page_count') required final int numberOfPages,
          @JsonKey(name: 'page_number') required final int pageNumber,
          @JsonKey(name: 'page_size') required final int pageSize}) =
      _$_PaginationInfoDTO;
  const _PaginationInfoDTO._() : super._();

  factory _PaginationInfoDTO.fromJson(Map<String, dynamic> json) =
      _$_PaginationInfoDTO.fromJson;

  @override
  @JsonKey(fromJson: _preventNull)
  String get continuation;
  @override
  @JsonKey(name: 'has_more_items')
  bool get hasMoreItems;
  @override
  @JsonKey(name: 'page_count')
  int get numberOfPages;
  @override
  @JsonKey(name: 'page_number')
  int get pageNumber;
  @override
  @JsonKey(name: 'page_size')
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationInfoDTOCopyWith<_$_PaginationInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
