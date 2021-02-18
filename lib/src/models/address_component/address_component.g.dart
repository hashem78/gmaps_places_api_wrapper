// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressComponent _$AddressComponentFromJson(Map<String, dynamic> json) {
  return $checkedNew('AddressComponent', json, () {
    final val = AddressComponent(
      longName: $checkedConvert(json, 'long_name', (v) => v as String),
      shortName: $checkedConvert(json, 'short_name', (v) => v as String),
      types: $checkedConvert(
          json, 'types', (v) => (v as List)?.map((e) => e as String)?.toList()),
    );
    return val;
  }, fieldKeyMap: const {'longName': 'long_name', 'shortName': 'short_name'});
}

Map<String, dynamic> _$AddressComponentToJson(AddressComponent instance) =>
    <String, dynamic>{
      'long_name': instance.longName,
      'short_name': instance.shortName,
      'types': instance.types,
    };
