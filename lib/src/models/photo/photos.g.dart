// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return $checkedNew('Photo', json, () {
    final val = Photo(
      height: $checkedConvert(json, 'height', (v) => v as int),
      htmlAttributions: $checkedConvert(json, 'htmlAttributions',
          (v) => (v as List)?.map((e) => e as String)?.toList()),
      photoReference:
          $checkedConvert(json, 'photoReference', (v) => v as String),
      width: $checkedConvert(json, 'width', (v) => v as int),
    );
    return val;
  });
}

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'height': instance.height,
      'htmlAttributions': instance.htmlAttributions,
      'photoReference': instance.photoReference,
      'width': instance.width,
    };
