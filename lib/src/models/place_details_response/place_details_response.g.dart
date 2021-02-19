// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceDetailsResponse _$PlaceDetailsResponseFromJson(Map<String, dynamic> json) {
  return $checkedNew('PlaceDetailsResponse', json, () {
    final val = PlaceDetailsResponse(
      htmlAttributions: $checkedConvert(
          json, 'html_attributions', (v) => v as List<dynamic>?),
      result: $checkedConvert(
          json,
          'result',
          (v) => v == null
              ? null
              : PlaceDetailsResult.fromJson(v as Map<String, dynamic>)),
      status: $checkedConvert(json, 'status',
          (v) => _$enumDecodeNullable(_$ResponseStatusEnumMap, v)),
    );
    return val;
  }, fieldKeyMap: const {'htmlAttributions': 'html_attributions'});
}

Map<String, dynamic> _$PlaceDetailsResponseToJson(
        PlaceDetailsResponse instance) =>
    <String, dynamic>{
      'html_attributions': instance.htmlAttributions,
      'result': instance.result?.toJson(),
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
