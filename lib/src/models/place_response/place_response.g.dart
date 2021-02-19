// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindPlaceResponse _$FindPlaceResponseFromJson(Map<String, dynamic> json) {
  return $checkedNew('FindPlaceResponse', json, () {
    final val = FindPlaceResponse(
      candidates: $checkedConvert(
          json,
          'candidates',
          (v) => (v as List<dynamic>?)
              ?.map((e) => Candidate.fromJson(e as Map<String, dynamic>))
              .toList()),
      debugLog: $checkedConvert(
          json,
          'debug_log',
          (v) =>
              v == null ? null : DebugLog.fromJson(v as Map<String, dynamic>)),
      status: $checkedConvert(json, 'status',
          (v) => _$enumDecodeNullable(_$ResponseStatusEnumMap, v)),
    );
    return val;
  }, fieldKeyMap: const {'debugLog': 'debug_log'});
}

Map<String, dynamic> _$FindPlaceResponseToJson(FindPlaceResponse instance) =>
    <String, dynamic>{
      'candidates': instance.candidates?.map((e) => e.toJson()).toList(),
      'debug_log': instance.debugLog?.toJson(),
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
