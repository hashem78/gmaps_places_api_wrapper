// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutocompleteResponse _$AutocompleteResponseFromJson(Map<String, dynamic> json) {
  return $checkedNew('AutocompleteResponse', json, () {
    final val = AutocompleteResponse(
      status: $checkedConvert(json, 'status',
          (v) => _$enumDecodeNullable(_$ResponseStatusEnumMap, v)),
      predictions: $checkedConvert(
          json,
          'predictions',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : Prediction.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$AutocompleteResponseToJson(
        AutocompleteResponse instance) =>
    <String, dynamic>{
      'status': _$ResponseStatusEnumMap[instance.status],
      'predictions': instance.predictions?.map((e) => e?.toJson())?.toList(),
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
  ResponseStatus.NOT_FOUND: 'NOT_FOUND',
};
