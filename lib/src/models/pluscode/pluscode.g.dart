// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pluscode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlusCode _$PlusCodeFromJson(Map<String, dynamic> json) {
  return $checkedNew('PlusCode', json, () {
    final val = PlusCode(
      compoundCode: $checkedConvert(json, 'compound_code', (v) => v as String?),
      globalCode: $checkedConvert(json, 'global_code', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'compoundCode': 'compound_code',
    'globalCode': 'global_code'
  });
}

Map<String, dynamic> _$PlusCodeToJson(PlusCode instance) => <String, dynamic>{
      'compound_code': instance.compoundCode,
      'global_code': instance.globalCode,
    };
