// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageUrlStruct extends BaseStruct {
  ImageUrlStruct({
    String? imageUrl,
  }) : _imageUrl = imageUrl;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  static ImageUrlStruct fromMap(Map<String, dynamic> data) => ImageUrlStruct(
        imageUrl: data['image_url'] as String?,
      );

  static ImageUrlStruct? maybeFromMap(dynamic data) =>
      data is Map ? ImageUrlStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'image_url': _imageUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image_url': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImageUrlStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImageUrlStruct(
        imageUrl: deserializeParam(
          data['image_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImageUrlStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImageUrlStruct && imageUrl == other.imageUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([imageUrl]);
}

ImageUrlStruct createImageUrlStruct({
  String? imageUrl,
}) =>
    ImageUrlStruct(
      imageUrl: imageUrl,
    );
