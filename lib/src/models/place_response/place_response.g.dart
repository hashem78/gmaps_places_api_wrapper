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
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : Candidate.fromJson(e as Map<String, dynamic>))
              ?.toList()),
      debugLog: $checkedConvert(
          json,
          'debugLog',
          (v) =>
              v == null ? null : DebugLog.fromJson(v as Map<String, dynamic>)),
      status: $checkedConvert(json, 'status',
          (v) => _$enumDecodeNullable(_$ResponseStatusEnumMap, v)),
    );
    return val;
  });
}

Map<String, dynamic> _$FindPlaceResponseToJson(FindPlaceResponse instance) =>
    <String, dynamic>{
      'candidates': instance.candidates?.map((e) => e?.toJson())?.toList(),
      'debugLog': instance.debugLog?.toJson(),
      'status': _$ResponseStatusEnumMap[instance.status],
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

const _$ResponseStatusEnumMap = {
  ResponseStatus.OK: 'OK',
  ResponseStatus.ZERO_RESULTS: 'ZERO_RESULTS',
  ResponseStatus.OVER_QUERY_LIMIT: 'OVER_QUERY_LIMIT',
  ResponseStatus.REQUEST_DENIED: 'REQUEST_DENIED',
  ResponseStatus.INVALID_REQUEST: 'INVALID_REQUEST',
  ResponseStatus.UNKNOWN_ERROR: 'UNKNOWN_ERROR',
};
