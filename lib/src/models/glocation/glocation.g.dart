// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GLocation _$GLocationFromJson(Map<String, dynamic> json) {
  return $checkedNew('GLocation', json, () {
    final val = GLocation(
      lat: $checkedConvert(json, 'lat', (v) => (v as num)?.toDouble()),
      lng: $checkedConvert(json, 'lng', (v) => (v as num)?.toDouble()),
    );
    return val;
  });
}

Map<String, dynamic> _$GLocationToJson(GLocation instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
