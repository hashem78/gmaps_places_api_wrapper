// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matchedsubstring.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchedSubstring _$MatchedSubstringFromJson(Map<String, dynamic> json) {
  return $checkedNew('MatchedSubstring', json, () {
    final val = MatchedSubstring(
      length: $checkedConvert(json, 'length', (v) => v as int?),
      offset: $checkedConvert(json, 'offset', (v) => v as int?),
    );
    return val;
  });
}

Map<String, dynamic> _$MatchedSubstringToJson(MatchedSubstring instance) =>
    <String, dynamic>{
      'length': instance.length,
      'offset': instance.offset,
    };
