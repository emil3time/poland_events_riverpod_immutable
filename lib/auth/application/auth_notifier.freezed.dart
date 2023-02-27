// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accessApproval,
    required TResult Function() accessDenay,
    required TResult Function(AuthFailure failure) failure,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accessApproval,
    TResult? Function()? accessDenay,
    TResult? Function(AuthFailure failure)? failure,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accessApproval,
    TResult Function()? accessDenay,
    TResult Function(AuthFailure failure)? failure,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccessApproval value) accessApproval,
    required TResult Function(_AccesDeny value) accessDenay,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessApproval value)? accessApproval,
    TResult? Function(_AccesDeny value)? accessDenay,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessApproval value)? accessApproval,
    TResult Function(_AccesDeny value)? accessDenay,
    TResult Function(_Failure value)? failure,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AccessApprovalCopyWith<$Res> {
  factory _$$_AccessApprovalCopyWith(
          _$_AccessApproval value, $Res Function(_$_AccessApproval) then) =
      __$$_AccessApprovalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccessApprovalCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AccessApproval>
    implements _$$_AccessApprovalCopyWith<$Res> {
  __$$_AccessApprovalCopyWithImpl(
      _$_AccessApproval _value, $Res Function(_$_AccessApproval) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccessApproval extends _AccessApproval {
  const _$_AccessApproval() : super._();

  @override
  String toString() {
    return 'AuthState.accessApproval()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccessApproval);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accessApproval,
    required TResult Function() accessDenay,
    required TResult Function(AuthFailure failure) failure,
    required TResult Function() initial,
  }) {
    return accessApproval();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accessApproval,
    TResult? Function()? accessDenay,
    TResult? Function(AuthFailure failure)? failure,
    TResult? Function()? initial,
  }) {
    return accessApproval?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accessApproval,
    TResult Function()? accessDenay,
    TResult Function(AuthFailure failure)? failure,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (accessApproval != null) {
      return accessApproval();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccessApproval value) accessApproval,
    required TResult Function(_AccesDeny value) accessDenay,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Initial value) initial,
  }) {
    return accessApproval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessApproval value)? accessApproval,
    TResult? Function(_AccesDeny value)? accessDenay,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Initial value)? initial,
  }) {
    return accessApproval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessApproval value)? accessApproval,
    TResult Function(_AccesDeny value)? accessDenay,
    TResult Function(_Failure value)? failure,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (accessApproval != null) {
      return accessApproval(this);
    }
    return orElse();
  }
}

abstract class _AccessApproval extends AuthState {
  const factory _AccessApproval() = _$_AccessApproval;
  const _AccessApproval._() : super._();
}

/// @nodoc
abstract class _$$_AccesDenyCopyWith<$Res> {
  factory _$$_AccesDenyCopyWith(
          _$_AccesDeny value, $Res Function(_$_AccesDeny) then) =
      __$$_AccesDenyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccesDenyCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AccesDeny>
    implements _$$_AccesDenyCopyWith<$Res> {
  __$$_AccesDenyCopyWithImpl(
      _$_AccesDeny _value, $Res Function(_$_AccesDeny) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccesDeny extends _AccesDeny {
  const _$_AccesDeny() : super._();

  @override
  String toString() {
    return 'AuthState.accessDenay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccesDeny);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accessApproval,
    required TResult Function() accessDenay,
    required TResult Function(AuthFailure failure) failure,
    required TResult Function() initial,
  }) {
    return accessDenay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accessApproval,
    TResult? Function()? accessDenay,
    TResult? Function(AuthFailure failure)? failure,
    TResult? Function()? initial,
  }) {
    return accessDenay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accessApproval,
    TResult Function()? accessDenay,
    TResult Function(AuthFailure failure)? failure,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (accessDenay != null) {
      return accessDenay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccessApproval value) accessApproval,
    required TResult Function(_AccesDeny value) accessDenay,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Initial value) initial,
  }) {
    return accessDenay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessApproval value)? accessApproval,
    TResult? Function(_AccesDeny value)? accessDenay,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Initial value)? initial,
  }) {
    return accessDenay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessApproval value)? accessApproval,
    TResult Function(_AccesDeny value)? accessDenay,
    TResult Function(_Failure value)? failure,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (accessDenay != null) {
      return accessDenay(this);
    }
    return orElse();
  }
}

abstract class _AccesDeny extends AuthState {
  const factory _AccesDeny() = _$_AccesDeny;
  const _AccesDeny._() : super._();
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_Failure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res> get failure {
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(this.failure) : super._();

  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'AuthState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accessApproval,
    required TResult Function() accessDenay,
    required TResult Function(AuthFailure failure) failure,
    required TResult Function() initial,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accessApproval,
    TResult? Function()? accessDenay,
    TResult? Function(AuthFailure failure)? failure,
    TResult? Function()? initial,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accessApproval,
    TResult Function()? accessDenay,
    TResult Function(AuthFailure failure)? failure,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccessApproval value) accessApproval,
    required TResult Function(_AccesDeny value) accessDenay,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Initial value) initial,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessApproval value)? accessApproval,
    TResult? Function(_AccesDeny value)? accessDenay,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Initial value)? initial,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessApproval value)? accessApproval,
    TResult Function(_AccesDeny value)? accessDenay,
    TResult Function(_Failure value)? failure,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends AuthState {
  const factory _Failure(final AuthFailure failure) = _$_Failure;
  const _Failure._() : super._();

  AuthFailure get failure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accessApproval,
    required TResult Function() accessDenay,
    required TResult Function(AuthFailure failure) failure,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accessApproval,
    TResult? Function()? accessDenay,
    TResult? Function(AuthFailure failure)? failure,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accessApproval,
    TResult Function()? accessDenay,
    TResult Function(AuthFailure failure)? failure,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccessApproval value) accessApproval,
    required TResult Function(_AccesDeny value) accessDenay,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccessApproval value)? accessApproval,
    TResult? Function(_AccesDeny value)? accessDenay,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccessApproval value)? accessApproval,
    TResult Function(_AccesDeny value)? accessDenay,
    TResult Function(_Failure value)? failure,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AuthState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}
