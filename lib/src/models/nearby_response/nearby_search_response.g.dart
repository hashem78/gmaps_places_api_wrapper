// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearby_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NearbySearchResponse _$NearbySearchResponseFromJson(Map<String, dynamic> json) {
  return $checkedNew('NearbySearchResponse', json, () {
    final val = NearbySearchResponse(
      htmlAttributions: $checkedConvert(
          json, 'html_attributions', (v) => v as List<dynamic>?),
      nextPageToken:
          $checkedConvert(json, 'next_page_token', (v) => v as String?),
      results: $checkedConvert(
          json,
          'results',
          (v) => (v as List<dynamic>?)
              ?.map(
                  (e) => NearbySearchResult.fromJson(e as Map<String, dynamic>))
              .toList()),
      status: $checkedConvert(json, 'status',
          (v) => _$enumDecodeNullable(_$ResponseStatusEnumMap, v)),
    );
    return val;
  }, fieldKeyMap: const {
    'htmlAttributions': 'html_attributions',
    'nextPageToken': 'next_page_token'
  });
}

Map<String, dynamic> _$NearbySearchResponseToJson(
        NearbySearchResponse instance) =>
    <String, dynamic>{
      'html_attributions': instance.htmlAttributions,
      'next_page_token': instance.nextPageToken,
      'results': instance.results?.map((e) => e.toJson()).toList(),
      'status': _$ResponseStatusEnumMap[instance.status],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$ResponseStatusEnumMap = {
  ResponseStatus.OK: 'OK',
  ResponseStatus.ZERO_RESULTS: 'ZERO_RESULTS',
  ResponseStatus.OVER_QUERY_LIMIT: 'OVER_QUERY_LIMIT',
  ResponseStatus.REQUEST_DENIED: 'REQUEST_DENIED',
  ResponseStatus.INVALID_REQUEST: 'INVALID_REQUEST',
  ResponseStatus.UNKNOWN_ERROR: 'UNKNOWN_ERROR',
  ResponseStatus.NOT_FOUND: 'NOT_FOUND',
};
