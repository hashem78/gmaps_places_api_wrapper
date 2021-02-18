// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Candidate _$CandidateFromJson(Map<String, dynamic> json) {
  return $checkedNew('Candidate', json, () {
    final val = Candidate(
      formattedAddress:
          $checkedConvert(json, 'formattedAddress', (v) => v as String),
      geometry: $checkedConvert(
          json,
          'geometry',
          (v) =>
              v == null ? null : Geometry.fromJson(v as Map<String, dynamic>)),
      name: $checkedConvert(json, 'name', (v) => v as String),
      openingHours: $checkedConvert(
          json,
          'openingHours',
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
  });
}

Map<String, dynamic> _$CandidateToJson(Candidate instance) => <String, dynamic>{
      'formattedAddress': instance.formattedAddress,
      'geometry': instance.geometry?.toJson(),
      'name': instance.name,
      'openingHours': instance.openingHours?.toJson(),
      'photos': instance.photos?.map((e) => e?.toJson())?.toList(),
      'rating': instance.rating,
    };
