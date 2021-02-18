// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearby_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NearbySearchResult _$NearbySearchResultFromJson(Map<String, dynamic> json) {
  return $checkedNew('NearbySearchResult', json, () {
    final val = NearbySearchResult(
      businessStatus: $checkedConvert(json, 'business_status',
          (v) => _$enumDecodeNullable(_$BusinessStatusEnumMap, v)),
      geometry: $checkedConvert(
          json,
          'geometry',
          (v) =>
              v == null ? null : Geometry.fromJson(v as Map<String, dynamic>)),
      icon: $checkedConvert(json, 'icon', (v) => v as String),
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
      placeId: $checkedConvert(json, 'place_id', (v) => v as String),
      plusCode: $checkedConvert(
          json,
          'plus_code',
          (v) =>
              v == null ? null : PlusCode.fromJson(v as Map<String, dynamic>)),
      priceLevel: $checkedConvert(json, 'price_level', (v) => v as int),
      rating: $checkedConvert(json, 'rating', (v) => (v as num)?.toDouble()),
      reference: $checkedConvert(json, 'reference', (v) => v as String),
      types: $checkedConvert(
          json,
          'types',
          (v) => (v as List)
              ?.map((e) => _$enumDecodeNullable(_$PlaceTypeEnumMap, e))
              ?.toList()),
      userRatingsTotal:
          $checkedConvert(json, 'user_ratings_total', (v) => v as int),
      vicinity: $checkedConvert(json, 'vicinity', (v) => v as String),
      permanentlyClosed:
          $checkedConvert(json, 'permanently_closed', (v) => v as bool),
    );
    return val;
  }, fieldKeyMap: const {
    'businessStatus': 'business_status',
    'openingHours': 'opening_hours',
    'placeId': 'place_id',
    'plusCode': 'plus_code',
    'priceLevel': 'price_level',
    'userRatingsTotal': 'user_ratings_total',
    'permanentlyClosed': 'permanently_closed'
  });
}

Map<String, dynamic> _$NearbySearchResultToJson(NearbySearchResult instance) =>
    <String, dynamic>{
      'business_status': _$BusinessStatusEnumMap[instance.businessStatus],
      'geometry': instance.geometry?.toJson(),
      'icon': instance.icon,
      'name': instance.name,
      'opening_hours': instance.openingHours?.toJson(),
      'photos': instance.photos?.map((e) => e?.toJson())?.toList(),
      'place_id': instance.placeId,
      'plus_code': instance.plusCode?.toJson(),
      'price_level': instance.priceLevel,
      'rating': instance.rating,
      'reference': instance.reference,
      'types': instance.types?.map((e) => _$PlaceTypeEnumMap[e])?.toList(),
      'user_ratings_total': instance.userRatingsTotal,
      'vicinity': instance.vicinity,
      'permanently_closed': instance.permanentlyClosed,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$BusinessStatusEnumMap = {
  BusinessStatus.OPERATIONAL: 'OPERATIONAL',
  BusinessStatus.CLOSED_TEMPORARILY: 'CLOSED_TEMPORARILY',
  BusinessStatus.CLOSED_PERMANENTLY: 'CLOSED_PERMANENTLY',
};

const _$PlaceTypeEnumMap = {
  PlaceType.accounting: 'accounting',
  PlaceType.airport: 'airport',
  PlaceType.amusement_park: 'amusement_park',
  PlaceType.aquarium: 'aquarium',
  PlaceType.art_gallery: 'art_gallery',
  PlaceType.atm: 'atm',
  PlaceType.bakery: 'bakery',
  PlaceType.bank: 'bank',
  PlaceType.bar: 'bar',
  PlaceType.beauty_salon: 'beauty_salon',
  PlaceType.bicycle_store: 'bicycle_store',
  PlaceType.book_store: 'book_store',
  PlaceType.bowling_alley: 'bowling_alley',
  PlaceType.bus_station: 'bus_station',
  PlaceType.cafe: 'cafe',
  PlaceType.campground: 'campground',
  PlaceType.car_dealer: 'car_dealer',
  PlaceType.car_rental: 'car_rental',
  PlaceType.car_repair: 'car_repair',
  PlaceType.car_wash: 'car_wash',
  PlaceType.casino: 'casino',
  PlaceType.cemetery: 'cemetery',
  PlaceType.church: 'church',
  PlaceType.city_hall: 'city_hall',
  PlaceType.clothing_store: 'clothing_store',
  PlaceType.convenience_store: 'convenience_store',
  PlaceType.courthouse: 'courthouse',
  PlaceType.dentist: 'dentist',
  PlaceType.department_store: 'department_store',
  PlaceType.doctor: 'doctor',
  PlaceType.drugstore: 'drugstore',
  PlaceType.electrician: 'electrician',
  PlaceType.electronics_store: 'electronics_store',
  PlaceType.embassy: 'embassy',
  PlaceType.fire_station: 'fire_station',
  PlaceType.florist: 'florist',
  PlaceType.funeral_home: 'funeral_home',
  PlaceType.furniture_store: 'furniture_store',
  PlaceType.gas_station: 'gas_station',
  PlaceType.gym: 'gym',
  PlaceType.hair_care: 'hair_care',
  PlaceType.hardware_store: 'hardware_store',
  PlaceType.hindu_temple: 'hindu_temple',
  PlaceType.home_goods_store: 'home_goods_store',
  PlaceType.hospital: 'hospital',
  PlaceType.insurance_agency: 'insurance_agency',
  PlaceType.jewelry_store: 'jewelry_store',
  PlaceType.laundry: 'laundry',
  PlaceType.lawyer: 'lawyer',
  PlaceType.library: 'library',
  PlaceType.light_rail_station: 'light_rail_station',
  PlaceType.liquor_store: 'liquor_store',
  PlaceType.local_government_office: 'local_government_office',
  PlaceType.locksmith: 'locksmith',
  PlaceType.lodging: 'lodging',
  PlaceType.meal_delivery: 'meal_delivery',
  PlaceType.meal_takeaway: 'meal_takeaway',
  PlaceType.mosque: 'mosque',
  PlaceType.movie_rental: 'movie_rental',
  PlaceType.movie_theater: 'movie_theater',
  PlaceType.moving_company: 'moving_company',
  PlaceType.museum: 'museum',
  PlaceType.night_club: 'night_club',
  PlaceType.painter: 'painter',
  PlaceType.park: 'park',
  PlaceType.parking: 'parking',
  PlaceType.pet_store: 'pet_store',
  PlaceType.pharmacy: 'pharmacy',
  PlaceType.physiotherapist: 'physiotherapist',
  PlaceType.plumber: 'plumber',
  PlaceType.police: 'police',
  PlaceType.post_office: 'post_office',
  PlaceType.primary_school: 'primary_school',
  PlaceType.real_estate_agency: 'real_estate_agency',
  PlaceType.restaurant: 'restaurant',
  PlaceType.roofing_contractor: 'roofing_contractor',
  PlaceType.rv_park: 'rv_park',
  PlaceType.school: 'school',
  PlaceType.secondary_school: 'secondary_school',
  PlaceType.shoe_store: 'shoe_store',
  PlaceType.shopping_mall: 'shopping_mall',
  PlaceType.spa: 'spa',
  PlaceType.stadium: 'stadium',
  PlaceType.storage: 'storage',
  PlaceType.store: 'store',
  PlaceType.subway_station: 'subway_station',
  PlaceType.supermarket: 'supermarket',
  PlaceType.synagogue: 'synagogue',
  PlaceType.taxi_stand: 'taxi_stand',
  PlaceType.tourist_attraction: 'tourist_attraction',
  PlaceType.train_station: 'train_station',
  PlaceType.transit_station: 'transit_station',
  PlaceType.travel_agency: 'travel_agency',
  PlaceType.university: 'university',
  PlaceType.veterinary_care: 'veterinary_care',
  PlaceType.zoo: 'zoo',
  PlaceType.administrative_area_level_1: 'administrative_area_level_1',
  PlaceType.administrative_area_level_2: 'administrative_area_level_2',
  PlaceType.administrative_area_level_3: 'administrative_area_level_3',
  PlaceType.administrative_area_level_4: 'administrative_area_level_4',
  PlaceType.administrative_area_level_5: 'administrative_area_level_5',
  PlaceType.archipelago: 'archipelago',
  PlaceType.colloquial_area: 'colloquial_area',
  PlaceType.continent: 'continent',
  PlaceType.country: 'country',
  PlaceType.establishment: 'establishment',
  PlaceType.finance: 'finance',
  PlaceType.floor: 'floor',
  PlaceType.food: 'food',
  PlaceType.general_contractor: 'general_contractor',
  PlaceType.geocode: 'geocode',
  PlaceType.health: 'health',
  PlaceType.intersection: 'intersection',
  PlaceType.landmark: 'landmark',
  PlaceType.locality: 'locality',
  PlaceType.natural_feature: 'natural_feature',
  PlaceType.neighborhood: 'neighborhood',
  PlaceType.place_of_worship: 'place_of_worship',
  PlaceType.plus_code: 'plus_code',
  PlaceType.point_of_interest: 'point_of_interest',
  PlaceType.political: 'political',
  PlaceType.post_box: 'post_box',
  PlaceType.postal_code: 'postal_code',
  PlaceType.postal_code_prefix: 'postal_code_prefix',
  PlaceType.postal_code_suffix: 'postal_code_suffix',
  PlaceType.postal_town: 'postal_town',
  PlaceType.premise: 'premise',
  PlaceType.room: 'room',
  PlaceType.route: 'route',
  PlaceType.street_address: 'street_address',
  PlaceType.street_number: 'street_number',
  PlaceType.sublocality: 'sublocality',
  PlaceType.sublocality_level_1: 'sublocality_level_1',
  PlaceType.sublocality_level_2: 'sublocality_level_2',
  PlaceType.sublocality_level_3: 'sublocality_level_3',
  PlaceType.sublocality_level_4: 'sublocality_level_4',
  PlaceType.sublocality_level_5: 'sublocality_level_5',
  PlaceType.subpremise: 'subpremise',
  PlaceType.town_square: 'town_square',
  PlaceType.grocery_or_supermarket: 'grocery_or_supermarket',
};
