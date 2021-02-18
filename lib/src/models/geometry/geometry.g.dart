// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geometry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Geometry _$GeometryFromJson(Map<String, dynamic> json) {
  return $checkedNew('Geometry', json, () {
    final val = Geometry(
      location: $checkedConvert(
          json,
          'location',
          (v) =>
              v == null ? null : GLocation.fromJson(v as Map<String, dynamic>)),
      viewport: $checkedConvert(
          json,
          'viewport',
          (v) =>
              v == null ? null : Viewport.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$GeometryToJson(Geometry instance) => <String, dynamic>{
      'location': instance.location?.toJson(),
      'viewport': instance.viewport?.toJson(),
    };
