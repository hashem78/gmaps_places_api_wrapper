// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pluscode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlusCode _$PlusCodeFromJson(Map<String, dynamic> json) {
  return $checkedNew('PlusCode', json, () {
    final val = PlusCode(
      compoundCode: $checkedConvert(json, 'compoundCode', (v) => v as String),
      globalCode: $checkedConvert(json, 'globalCode', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$PlusCodeToJson(PlusCode instance) => <String, dynamic>{
      'compoundCode': instance.compoundCode,
      'globalCode': instance.globalCode,
    };
