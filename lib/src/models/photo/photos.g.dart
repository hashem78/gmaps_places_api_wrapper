// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return $checkedNew('Photo', json, () {
    final val = Photo(
      height: $checkedConvert(json, 'height', (v) => v as int?),
      htmlAttributions: $checkedConvert(json, 'html_attributions',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
      photoReference:
          $checkedConvert(json, 'photo_reference', (v) => v as String?),
      width: $checkedConvert(json, 'width', (v) => v as int?),
    );
    return val;
  }, fieldKeyMap: const {
    'htmlAttributions': 'html_attributions',
    'photoReference': 'photo_reference'
  });
}

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'height': instance.height,
      'html_attributions': instance.htmlAttributions,
      'photo_reference': instance.photoReference,
      'width': instance.width,
    };
