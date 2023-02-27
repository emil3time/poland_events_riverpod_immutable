// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_data_and_pagination_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventDataAndPaginationInfo<T> {
  T get data => throw _privateConstructorUsedError;
  bool get hasMorePages => throw _privateConstructorUsedError;
  bool get isNoConnection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventDataAndPaginationInfoCopyWith<T, EventDataAndPaginationInfo<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDataAndPaginationInfoCopyWith<T, $Res> {
  factory $EventDataAndPaginationInfoCopyWith(
          EventDataAndPaginationInfo<T> value,
          $Res Function(EventDataAndPaginationInfo<T>) then) =
      _$EventDataAndPaginationInfoCopyWithImpl<T, $Res,
          EventDataAndPaginationInfo<T>>;
  @useResult
  $Res call({T data, bool hasMorePages, bool isNoConnection});
}

/// @nodoc
class _$EventDataAndPaginationInfoCopyWithImpl<T, $Res,
        $Val extends EventDataAndPaginationInfo<T>>
    implements $EventDataAndPaginationInfoCopyWith<T, $Res> {
  _$EventDataAndPaginationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? hasMorePages = null,
    Object? isNoConnection = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      hasMorePages: null == hasMorePages
          ? _value.hasMorePages
          : hasMorePages // ignore: cast_nullable_to_non_nullable
              as bool,
      isNoConnection: null == isNoConnection
          ? _value.isNoConnection
          : isNoConnection // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventDataAndPaginationInfoCopyWith<T, $Res>
    implements $EventDataAndPaginationInfoCopyWith<T, $Res> {
  factory _$$_EventDataAndPaginationInfoCopyWith(
          _$_EventDataAndPaginationInfo<T> value,
          $Res Function(_$_EventDataAndPaginationInfo<T>) then) =
      __$$_EventDataAndPaginationInfoCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T data, bool hasMorePages, bool isNoConnection});
}

/// @nodoc
class __$$_EventDataAndPaginationInfoCopyWithImpl<T, $Res>
    extends _$EventDataAndPaginationInfoCopyWithImpl<T, $Res,
        _$_EventDataAndPaginationInfo<T>>
    implements _$$_EventDataAndPaginationInfoCopyWith<T, $Res> {
  __$$_EventDataAndPaginationInfoCopyWithImpl(
      _$_EventDataAndPaginationInfo<T> _value,
      $Res Function(_$_EventDataAndPaginationInfo<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? hasMorePages = null,
    Object? isNoConnection = null,
  }) {
    return _then(_$_EventDataAndPaginationInfo<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      hasMorePages: null == hasMorePages
          ? _value.hasMorePages
          : hasMorePages // ignore: cast_nullable_to_non_nullable
              as bool,
      isNoConnection: null == isNoConnection
          ? _value.isNoConnection
          : isNoConnection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EventDataAndPaginationInfo<T> extends _EventDataAndPaginationInfo<T> {
  const _$_EventDataAndPaginationInfo(
      {required this.data,
      required this.hasMorePages,
      required this.isNoConnection})
      : super._();

  @override
  final T data;
  @override
  final bool hasMorePages;
  @override
  final bool isNoConnection;

  @override
  String toString() {
    return 'EventDataAndPaginationInfo<$T>(data: $data, hasMorePages: $hasMorePages, isNoConnection: $isNoConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDataAndPaginationInfo<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.hasMorePages, hasMorePages) ||
                other.hasMorePages == hasMorePages) &&
            (identical(other.isNoConnection, isNoConnection) ||
                other.isNoConnection == isNoConnection));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), hasMorePages, isNoConnection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDataAndPaginationInfoCopyWith<T, _$_EventDataAndPaginationInfo<T>>
      get copyWith => __$$_EventDataAndPaginationInfoCopyWithImpl<T,
          _$_EventDataAndPaginationInfo<T>>(this, _$identity);
}

abstract class _EventDataAndPaginationInfo<T>
    extends EventDataAndPaginationInfo<T> {
  const factory _EventDataAndPaginationInfo(
      {required final T data,
      required final bool hasMorePages,
      required final bool isNoConnection}) = _$_EventDataAndPaginationInfo<T>;
  const _EventDataAndPaginationInfo._() : super._();

  @override
  T get data;
  @override
  bool get hasMorePages;
  @override
  bool get isNoConnection;
  @override
  @JsonKey(ignore: true)
  _$$_EventDataAndPaginationInfoCopyWith<T, _$_EventDataAndPaginationInfo<T>>
      get copyWith => throw _privateConstructorUsedError;
}
