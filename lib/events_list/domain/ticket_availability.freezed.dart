// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketAvailability {
  bool get isFree => throw _privateConstructorUsedError;
  bool get isSoldOut => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketAvailabilityCopyWith<TicketAvailability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketAvailabilityCopyWith<$Res> {
  factory $TicketAvailabilityCopyWith(
          TicketAvailability value, $Res Function(TicketAvailability) then) =
      _$TicketAvailabilityCopyWithImpl<$Res, TicketAvailability>;
  @useResult
  $Res call({bool isFree, bool isSoldOut});
}

/// @nodoc
class _$TicketAvailabilityCopyWithImpl<$Res, $Val extends TicketAvailability>
    implements $TicketAvailabilityCopyWith<$Res> {
  _$TicketAvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFree = null,
    Object? isSoldOut = null,
  }) {
    return _then(_value.copyWith(
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isSoldOut: null == isSoldOut
          ? _value.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketAvailabilityCopyWith<$Res>
    implements $TicketAvailabilityCopyWith<$Res> {
  factory _$$_TicketAvailabilityCopyWith(_$_TicketAvailability value,
          $Res Function(_$_TicketAvailability) then) =
      __$$_TicketAvailabilityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFree, bool isSoldOut});
}

/// @nodoc
class __$$_TicketAvailabilityCopyWithImpl<$Res>
    extends _$TicketAvailabilityCopyWithImpl<$Res, _$_TicketAvailability>
    implements _$$_TicketAvailabilityCopyWith<$Res> {
  __$$_TicketAvailabilityCopyWithImpl(
      _$_TicketAvailability _value, $Res Function(_$_TicketAvailability) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFree = null,
    Object? isSoldOut = null,
  }) {
    return _then(_$_TicketAvailability(
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isSoldOut: null == isSoldOut
          ? _value.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TicketAvailability extends _TicketAvailability {
  const _$_TicketAvailability({required this.isFree, required this.isSoldOut})
      : super._();

  @override
  final bool isFree;
  @override
  final bool isSoldOut;

  @override
  String toString() {
    return 'TicketAvailability(isFree: $isFree, isSoldOut: $isSoldOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketAvailability &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.isSoldOut, isSoldOut) ||
                other.isSoldOut == isSoldOut));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFree, isSoldOut);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketAvailabilityCopyWith<_$_TicketAvailability> get copyWith =>
      __$$_TicketAvailabilityCopyWithImpl<_$_TicketAvailability>(
          this, _$identity);
}

abstract class _TicketAvailability extends TicketAvailability {
  const factory _TicketAvailability(
      {required final bool isFree,
      required final bool isSoldOut}) = _$_TicketAvailability;
  const _TicketAvailability._() : super._();

  @override
  bool get isFree;
  @override
  bool get isSoldOut;
  @override
  @JsonKey(ignore: true)
  _$$_TicketAvailabilityCopyWith<_$_TicketAvailability> get copyWith =>
      throw _privateConstructorUsedError;
}
