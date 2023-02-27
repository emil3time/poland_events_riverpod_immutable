// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_availability_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketAvailabilityDTO _$TicketAvailabilityDTOFromJson(
    Map<String, dynamic> json) {
  return _TicketAvailabilityDTO.fromJson(json);
}

/// @nodoc
mixin _$TicketAvailabilityDTO {
  @JsonKey(name: 'is_sold_out')
  bool get isSoldOut => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_free')
  bool get isFree => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketAvailabilityDTOCopyWith<TicketAvailabilityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketAvailabilityDTOCopyWith<$Res> {
  factory $TicketAvailabilityDTOCopyWith(TicketAvailabilityDTO value,
          $Res Function(TicketAvailabilityDTO) then) =
      _$TicketAvailabilityDTOCopyWithImpl<$Res, TicketAvailabilityDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_sold_out') bool isSoldOut,
      @JsonKey(name: 'is_free') bool isFree});
}

/// @nodoc
class _$TicketAvailabilityDTOCopyWithImpl<$Res,
        $Val extends TicketAvailabilityDTO>
    implements $TicketAvailabilityDTOCopyWith<$Res> {
  _$TicketAvailabilityDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSoldOut = null,
    Object? isFree = null,
  }) {
    return _then(_value.copyWith(
      isSoldOut: null == isSoldOut
          ? _value.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketAvailabilityDTOCopyWith<$Res>
    implements $TicketAvailabilityDTOCopyWith<$Res> {
  factory _$$_TicketAvailabilityDTOCopyWith(_$_TicketAvailabilityDTO value,
          $Res Function(_$_TicketAvailabilityDTO) then) =
      __$$_TicketAvailabilityDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_sold_out') bool isSoldOut,
      @JsonKey(name: 'is_free') bool isFree});
}

/// @nodoc
class __$$_TicketAvailabilityDTOCopyWithImpl<$Res>
    extends _$TicketAvailabilityDTOCopyWithImpl<$Res, _$_TicketAvailabilityDTO>
    implements _$$_TicketAvailabilityDTOCopyWith<$Res> {
  __$$_TicketAvailabilityDTOCopyWithImpl(_$_TicketAvailabilityDTO _value,
      $Res Function(_$_TicketAvailabilityDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSoldOut = null,
    Object? isFree = null,
  }) {
    return _then(_$_TicketAvailabilityDTO(
      isSoldOut: null == isSoldOut
          ? _value.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketAvailabilityDTO extends _TicketAvailabilityDTO {
  const _$_TicketAvailabilityDTO(
      {@JsonKey(name: 'is_sold_out') required this.isSoldOut,
      @JsonKey(name: 'is_free') required this.isFree})
      : super._();

  factory _$_TicketAvailabilityDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TicketAvailabilityDTOFromJson(json);

  @override
  @JsonKey(name: 'is_sold_out')
  final bool isSoldOut;
  @override
  @JsonKey(name: 'is_free')
  final bool isFree;

  @override
  String toString() {
    return 'TicketAvailabilityDTO(isSoldOut: $isSoldOut, isFree: $isFree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketAvailabilityDTO &&
            (identical(other.isSoldOut, isSoldOut) ||
                other.isSoldOut == isSoldOut) &&
            (identical(other.isFree, isFree) || other.isFree == isFree));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isSoldOut, isFree);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketAvailabilityDTOCopyWith<_$_TicketAvailabilityDTO> get copyWith =>
      __$$_TicketAvailabilityDTOCopyWithImpl<_$_TicketAvailabilityDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketAvailabilityDTOToJson(
      this,
    );
  }
}

abstract class _TicketAvailabilityDTO extends TicketAvailabilityDTO {
  const factory _TicketAvailabilityDTO(
          {@JsonKey(name: 'is_sold_out') required final bool isSoldOut,
          @JsonKey(name: 'is_free') required final bool isFree}) =
      _$_TicketAvailabilityDTO;
  const _TicketAvailabilityDTO._() : super._();

  factory _TicketAvailabilityDTO.fromJson(Map<String, dynamic> json) =
      _$_TicketAvailabilityDTO.fromJson;

  @override
  @JsonKey(name: 'is_sold_out')
  bool get isSoldOut;
  @override
  @JsonKey(name: 'is_free')
  bool get isFree;
  @override
  @JsonKey(ignore: true)
  _$$_TicketAvailabilityDTOCopyWith<_$_TicketAvailabilityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
