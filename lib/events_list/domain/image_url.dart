import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';

@freezed
class ImageUrl with _$ImageUrl {
  const ImageUrl._();
  const factory ImageUrl({
    required String image,
  }) = _Image;
}
