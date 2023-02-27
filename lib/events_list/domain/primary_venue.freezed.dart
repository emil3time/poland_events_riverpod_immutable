// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'primary_venue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrimaryVenue {
  Address get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrimaryVenueCopyWith<PrimaryVenue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryVenueCopyWith<$Res> {
  factory $PrimaryVenueCopyWith(
          PrimaryVenue value, $Res Function(PrimaryVenue) then) =
      _$PrimaryVenueCopyWithImpl<$Res, PrimaryVenue>;
  @useResult
  $Res call({Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$PrimaryVenueCopyWithImpl<$Res, $Val extends PrimaryVenue>
    implements $PrimaryVenueCopyWith<$Res> {
  _$PrimaryVenueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PrimaryVenueCopyWith<$Res>
    implements $PrimaryVenueCopyWith<$Res> {
  factory _$$_PrimaryVenueCopyWith(
          _$_PrimaryVenue value, $Res Function(_$_PrimaryVenue) then) =
      __$$_PrimaryVenueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_PrimaryVenueCopyWithImpl<$Res>
    extends _$PrimaryVenueCopyWithImpl<$Res, _$_PrimaryVenue>
    implements _$$_PrimaryVenueCopyWith<$Res> {
  __$$_PrimaryVenueCopyWithImpl(
      _$_PrimaryVenue _value, $Res Function(_$_PrimaryVenue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$_PrimaryVenue(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$_PrimaryVenue extends _PrimaryVenue {
  const _$_PrimaryVenue({required this.address}) : super._();

  @override
  final Address address;

  @override
  String toString() {
    return 'PrimaryVenue(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrimaryVenue &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrimaryVenueCopyWith<_$_PrimaryVenue> get copyWith =>
      __$$_PrimaryVenueCopyWithImpl<_$_PrimaryVenue>(this, _$identity);
}

abstract class _PrimaryVenue extends PrimaryVenue {
  const factory _PrimaryVenue({required final Address address}) =
      _$_PrimaryVenue;
  const _PrimaryVenue._() : super._();

  @override
  Address get address;
  @override
  @JsonKey(ignore: true)
  _$$_PrimaryVenueCopyWith<_$_PrimaryVenue> get copyWith =>
      throw _privateConstructorUsedError;
}
