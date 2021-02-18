// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Term _$TermFromJson(Map<String, dynamic> json) {
  return $checkedNew('Term', json, () {
    final val = Term(
      length: $checkedConvert(json, 'length', (v) => v as int),
      value: $checkedConvert(json, 'value', (v) => v as String),
      offset: $checkedConvert(json, 'offset', (v) => v as int),
    );
    return val;
  });
}

Map<String, dynamic> _$TermToJson(Term instance) => <String, dynamic>{
      'length': instance.length,
      'offset': instance.offset,
      'value': instance.value,
    };
