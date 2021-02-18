// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextSearchResponse _$TextSearchResponseFromJson(Map<String, dynamic> json) {
  return $checkedNew('TextSearchResponse', json, () {
    final val = TextSearchResponse(
      htmlAttributions:
          $checkedConvert(json, 'htmlAttributions', (v) => v as List),
      nextPageToken: $checkedConvert(json, 'nextPageToken', (v) => v as String),
      results: $checkedConvert(
          json,
          'results',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : TextSearchResult.fromJson(e as Map<String, dynamic>))
              ?.toList()),
      status: $checkedConvert(json, 'status',
          (v) => _$enumDecodeNullable(_$ResponseStatusEnumMap, v)),
    );
    return val;
  });
}

Map<String, dynamic> _$TextSearchResponseToJson(TextSearchResponse instance) =>
    <String, dynamic>{
      'htmlAttributions': instance.htmlAttributions,
      'nextPageToken': instance.nextPageToken,
      'results': instance.results?.map((e) => e?.toJson())?.toList(),
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
