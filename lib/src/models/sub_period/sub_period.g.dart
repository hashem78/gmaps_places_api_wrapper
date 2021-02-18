// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubPeriod _$SubPeriodFromJson(Map<String, dynamic> json) {
  return $checkedNew('SubPeriod', json, () {
    final val = SubPeriod(
      $checkedConvert(json, 'day', (v) => v as int),
      $checkedConvert(json, 'time', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$SubPeriodToJson(SubPeriod instance) => <String, dynamic>{
      'day': instance.day,
      'time': instance.time,
    };
