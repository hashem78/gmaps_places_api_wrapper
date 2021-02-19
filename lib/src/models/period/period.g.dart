// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GPeriod _$GPeriodFromJson(Map<String, dynamic> json) {
  return $checkedNew('GPeriod', json, () {
    final val = GPeriod(
      $checkedConvert(
          json, 'open', (v) => SubPeriod.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(
          json, 'close', (v) => SubPeriod.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$GPeriodToJson(GPeriod instance) => <String, dynamic>{
      'open': instance.open.toJson(),
      'close': instance.close.toJson(),
    };
