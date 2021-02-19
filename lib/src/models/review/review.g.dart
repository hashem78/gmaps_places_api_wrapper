// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return $checkedNew('Review', json, () {
    final val = Review(
      authorName: $checkedConvert(json, 'author_name', (v) => v as String?),
      authorUrl: $checkedConvert(json, 'author_url', (v) => v as String?),
      language: $checkedConvert(json, 'language', (v) => v as String?),
      profilePhotoUrl:
          $checkedConvert(json, 'profile_photo_url', (v) => v as String?),
      rating: $checkedConvert(json, 'rating', (v) => v as int?),
      relativeTimeDescription: $checkedConvert(
          json, 'relative_time_description', (v) => v as String?),
      text: $checkedConvert(json, 'text', (v) => v as String?),
      time: $checkedConvert(json, 'time', (v) => v as int?),
    );
    return val;
  }, fieldKeyMap: const {
    'authorName': 'author_name',
    'authorUrl': 'author_url',
    'profilePhotoUrl': 'profile_photo_url',
    'relativeTimeDescription': 'relative_time_description'
  });
}

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'author_name': instance.authorName,
      'author_url': instance.authorUrl,
      'language': instance.language,
      'profile_photo_url': instance.profilePhotoUrl,
      'rating': instance.rating,
      'relative_time_description': instance.relativeTimeDescription,
      'text': instance.text,
      'time': instance.time,
    };
