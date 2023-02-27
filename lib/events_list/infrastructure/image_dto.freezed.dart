// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageUrlDTO _$ImageUrlDTOFromJson(Map<String, dynamic> json) {
  return _ImageDTO.fromJson(json);
}

/// @nodoc
mixin _$ImageUrlDTO {
  @JsonKey(name: 'url')
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUrlDTOCopyWith<ImageUrlDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUrlDTOCopyWith<$Res> {
  factory $ImageUrlDTOCopyWith(
          ImageUrlDTO value, $Res Function(ImageUrlDTO) then) =
      _$ImageUrlDTOCopyWithImpl<$Res, ImageUrlDTO>;
  @useResult
  $Res call({@JsonKey(name: 'url') String imageUrl});
}

/// @nodoc
class _$ImageUrlDTOCopyWithImpl<$Res, $Val extends ImageUrlDTO>
    implements $ImageUrlDTOCopyWith<$Res> {
  _$ImageUrlDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageDTOCopyWith<$Res>
    implements $ImageUrlDTOCopyWith<$Res> {
  factory _$$_ImageDTOCopyWith(
          _$_ImageDTO value, $Res Function(_$_ImageDTO) then) =
      __$$_ImageDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'url') String imageUrl});
}

/// @nodoc
class __$$_ImageDTOCopyWithImpl<$Res>
    extends _$ImageUrlDTOCopyWithImpl<$Res, _$_ImageDTO>
    implements _$$_ImageDTOCopyWith<$Res> {
  __$$_ImageDTOCopyWithImpl(
      _$_ImageDTO _value, $Res Function(_$_ImageDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$_ImageDTO(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageDTO extends _ImageDTO {
  const _$_ImageDTO({@JsonKey(name: 'url') required this.imageUrl}) : super._();

  factory _$_ImageDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ImageDTOFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String imageUrl;

  @override
  String toString() {
    return 'ImageUrlDTO(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageDTO &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageDTOCopyWith<_$_ImageDTO> get copyWith =>
      __$$_ImageDTOCopyWithImpl<_$_ImageDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageDTOToJson(
      this,
    );
  }
}

abstract class _ImageDTO extends ImageUrlDTO {
  const factory _ImageDTO(
      {@JsonKey(name: 'url') required final String imageUrl}) = _$_ImageDTO;
  const _ImageDTO._() : super._();

  factory _ImageDTO.fromJson(Map<String, dynamic> json) = _$_ImageDTO.fromJson;

  @override
  @JsonKey(name: 'url')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ImageDTOCopyWith<_$_ImageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
