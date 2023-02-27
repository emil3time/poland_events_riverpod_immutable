// ignore_for_file: invalid_annotation_target

import 'package:events/events_list/domain/image_url.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_dto.freezed.dart';
part 'image_dto.g.dart';

@freezed
class ImageUrlDTO with _$ImageUrlDTO {
  const ImageUrlDTO._();
  const factory ImageUrlDTO({
    @JsonKey(name: 'url') required String imageUrl,
  }) = _ImageDTO;

  factory ImageUrlDTO.fromJson(Map<String, dynamic> json) =>
      _$ImageUrlDTOFromJson(json);

  ImageUrl toDomain() {
    return ImageUrl(
      image: imageUrl,
    );
  }
}
