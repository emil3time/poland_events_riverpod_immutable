// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginationInfo {
  String get continuationToken => throw _privateConstructorUsedError;
  bool get hasMoreItems => throw _privateConstructorUsedError;
  int get numberOfPages => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationInfoCopyWith<PaginationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationInfoCopyWith<$Res> {
  factory $PaginationInfoCopyWith(
          PaginationInfo value, $Res Function(PaginationInfo) then) =
      _$PaginationInfoCopyWithImpl<$Res, PaginationInfo>;
  @useResult
  $Res call(
      {String continuationToken,
      bool hasMoreItems,
      int numberOfPages,
      int pageNumber,
      int pageSize});
}

/// @nodoc
class _$PaginationInfoCopyWithImpl<$Res, $Val extends PaginationInfo>
    implements $PaginationInfoCopyWith<$Res> {
  _$PaginationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continuationToken = null,
    Object? hasMoreItems = null,
    Object? numberOfPages = null,
    Object? pageNumber = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      continuationToken: null == continuationToken
          ? _value.continuationToken
          : continuationToken // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_PaginationInfoCopyWith<$Res>
    implements $PaginationInfoCopyWith<$Res> {
  factory _$$_PaginationInfoCopyWith(
          _$_PaginationInfo value, $Res Function(_$_PaginationInfo) then) =
      __$$_PaginationInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String continuationToken,
      bool hasMoreItems,
      int numberOfPages,
      int pageNumber,
      int pageSize});
}

/// @nodoc
class __$$_PaginationInfoCopyWithImpl<$Res>
    extends _$PaginationInfoCopyWithImpl<$Res, _$_PaginationInfo>
    implements _$$_PaginationInfoCopyWith<$Res> {
  __$$_PaginationInfoCopyWithImpl(
      _$_PaginationInfo _value, $Res Function(_$_PaginationInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continuationToken = null,
    Object? hasMoreItems = null,
    Object? numberOfPages = null,
    Object? pageNumber = null,
    Object? pageSize = null,
  }) {
    return _then(_$_PaginationInfo(
      continuationToken: null == continuationToken
          ? _value.continuationToken
          : continuationToken // ignore: cast_nullable_to_non_nullable
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

class _$_PaginationInfo extends _PaginationInfo {
  const _$_PaginationInfo(
      {required this.continuationToken,
      required this.hasMoreItems,
      required this.numberOfPages,
      required this.pageNumber,
      required this.pageSize})
      : super._();

  @override
  final String continuationToken;
  @override
  final bool hasMoreItems;
  @override
  final int numberOfPages;
  @override
  final int pageNumber;
  @override
  final int pageSize;

  @override
  String toString() {
    return 'PaginationInfo(continuationToken: $continuationToken, hasMoreItems: $hasMoreItems, numberOfPages: $numberOfPages, pageNumber: $pageNumber, pageSize: $pageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationInfo &&
            (identical(other.continuationToken, continuationToken) ||
                other.continuationToken == continuationToken) &&
            (identical(other.hasMoreItems, hasMoreItems) ||
                other.hasMoreItems == hasMoreItems) &&
            (identical(other.numberOfPages, numberOfPages) ||
                other.numberOfPages == numberOfPages) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, continuationToken, hasMoreItems,
      numberOfPages, pageNumber, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationInfoCopyWith<_$_PaginationInfo> get copyWith =>
      __$$_PaginationInfoCopyWithImpl<_$_PaginationInfo>(this, _$identity);
}

abstract class _PaginationInfo extends PaginationInfo {
  const factory _PaginationInfo(
      {required final String continuationToken,
      required final bool hasMoreItems,
      required final int numberOfPages,
      required final int pageNumber,
      required final int pageSize}) = _$_PaginationInfo;
  const _PaginationInfo._() : super._();

  @override
  String get continuationToken;
  @override
  bool get hasMoreItems;
  @override
  int get numberOfPages;
  @override
  int get pageNumber;
  @override
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationInfoCopyWith<_$_PaginationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
