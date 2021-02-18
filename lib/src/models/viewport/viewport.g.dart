// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Viewport _$ViewportFromJson(Map<String, dynamic> json) {
  return $checkedNew('Viewport', json, () {
    final val = Viewport(
      northeast: $checkedConvert(
          json,
          'northeast',
          (v) =>
              v == null ? null : GLocation.fromJson(v as Map<String, dynamic>)),
      southwest: $checkedConvert(
          json,
          'southwest',
          (v) =>
              v == null ? null : GLocation.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$ViewportToJson(Viewport instance) => <String, dynamic>{
      'northeast': instance.northeast?.toJson(),
      'southwest': instance.southwest?.toJson(),
    };
