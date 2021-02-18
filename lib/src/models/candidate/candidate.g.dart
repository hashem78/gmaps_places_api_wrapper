// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Candidate _$CandidateFromJson(Map<String, dynamic> json) {
  return $checkedNew('Candidate', json, () {
    final val = Candidate(
      formattedAddress:
          $checkedConvert(json, 'formatted_address', (v) => v as String),
      geometry: $checkedConvert(
          json,
          'geometry',
          (v) =>
              v == null ? null : Geometry.fromJson(v as Map<String, dynamic>)),
      name: $checkedConvert(json, 'name', (v) => v as String),
      openingHours: $checkedConvert(
          json,
          'opening_hours',
          (v) => v == null
              ? null
              : OpeningHours.fromJson(v as Map<String, dynamic>)),
      photos: $checkedConvert(
          json,
          'photos',
          (v) => (v as List)
              ?.map((e) =>
                  e == null ? null : Photo.fromJson(e as Map<String, dynamic>))
              ?.toList()),
      rating: $checkedConvert(json, 'rating', (v) => (v as num)?.toDouble()),
    );
    return val;
  }, fieldKeyMap: const {
    'formattedAddress': 'formatted_address',
    'openingHours': 'opening_hours'
  });
}

Map<String, dynamic> _$CandidateToJson(Candidate instance) => <String, dynamic>{
      'formatted_address': instance.formattedAddress,
      'geometry': instance.geometry?.toJson(),
      'name': instance.name,
      'opening_hours': instance.openingHours?.toJson(),
      'photos': instance.photos?.map((e) => e?.toJson())?.toList(),
      'rating': instance.rating,
    };
