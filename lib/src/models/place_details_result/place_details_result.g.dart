// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_details_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceDetailsResult _$PlaceDetailsResultFromJson(Map<String, dynamic> json) {
  return $checkedNew('PlaceDetailsResult', json, () {
    final val = PlaceDetailsResult(
      addressComponents: $checkedConvert(
          json,
          'address_components',
          (v) => (v as List<dynamic>?)
              ?.map((e) => AddressComponent.fromJson(e as Map<String, dynamic>))
              .toList()),
      adrAddress: $checkedConvert(json, 'adr_address', (v) => v as String?),
      businessStatus:
          $checkedConvert(json, 'business_status', (v) => v as String?),
      formattedAddress:
          $checkedConvert(json, 'formatted_address', (v) => v as String?),
      formattedPhoneNumber:
          $checkedConvert(json, 'formatted_phone_number', (v) => v as String?),
      geometry: $checkedConvert(
          json,
          'geometry',
          (v) =>
              v == null ? null : Geometry.fromJson(v as Map<String, dynamic>)),
      icon: $checkedConvert(json, 'icon', (v) => v as String?),
      internationalPhoneNumber: $checkedConvert(
          json, 'international_phone_number', (v) => v as String?),
      name: $checkedConvert(json, 'name', (v) => v as String?),
      openingHours: $checkedConvert(
          json,
          'opening_hours',
          (v) => v == null
              ? null
              : OpeningHours.fromJson(v as Map<String, dynamic>)),
      photos: $checkedConvert(
          json,
          'photos',
          (v) => (v as List<dynamic>?)
              ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
              .toList()),
      placeId: $checkedConvert(json, 'place_id', (v) => v as String?),
      plusCode: $checkedConvert(
          json,
          'plus_code',
          (v) =>
              v == null ? null : PlusCode.fromJson(v as Map<String, dynamic>)),
      rating: $checkedConvert(json, 'rating', (v) => (v as num?)?.toDouble()),
      reviews: $checkedConvert(
          json,
          'reviews',
          (v) => (v as List<dynamic>?)
              ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
              .toList()),
      types: $checkedConvert(json, 'types',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
      url: $checkedConvert(json, 'url', (v) => v as String?),
      userRatingsTotal:
          $checkedConvert(json, 'user_ratings_total', (v) => v as int?),
      utcOffset: $checkedConvert(json, 'utc_offset', (v) => v as int?),
      vicinity: $checkedConvert(json, 'vicinity', (v) => v as String?),
      website: $checkedConvert(json, 'website', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'addressComponents': 'address_components',
    'adrAddress': 'adr_address',
    'businessStatus': 'business_status',
    'formattedAddress': 'formatted_address',
    'formattedPhoneNumber': 'formatted_phone_number',
    'internationalPhoneNumber': 'international_phone_number',
    'openingHours': 'opening_hours',
    'placeId': 'place_id',
    'plusCode': 'plus_code',
    'userRatingsTotal': 'user_ratings_total',
    'utcOffset': 'utc_offset'
  });
}

Map<String, dynamic> _$PlaceDetailsResultToJson(PlaceDetailsResult instance) =>
    <String, dynamic>{
      'address_components':
          instance.addressComponents?.map((e) => e.toJson()).toList(),
      'adr_address': instance.adrAddress,
      'business_status': instance.businessStatus,
      'formatted_address': instance.formattedAddress,
      'formatted_phone_number': instance.formattedPhoneNumber,
      'geometry': instance.geometry?.toJson(),
      'icon': instance.icon,
      'international_phone_number': instance.internationalPhoneNumber,
      'name': instance.name,
      'opening_hours': instance.openingHours?.toJson(),
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
      'place_id': instance.placeId,
      'plus_code': instance.plusCode?.toJson(),
      'rating': instance.rating,
      'reviews': instance.reviews?.map((e) => e.toJson()).toList(),
      'types': instance.types,
      'url': instance.url,
      'user_ratings_total': instance.userRatingsTotal,
      'utc_offset': instance.utcOffset,
      'vicinity': instance.vicinity,
      'website': instance.website,
    };
