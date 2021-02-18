// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openinghours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) {
  return $checkedNew('OpeningHours', json, () {
    final val = OpeningHours(
      openNow: $checkedConvert(json, 'openNow', (v) => v as bool),
      weekdayText: $checkedConvert(json, 'weekdayText', (v) => v as List),
    );
    return val;
  });
}

Map<String, dynamic> _$OpeningHoursToJson(OpeningHours instance) =>
    <String, dynamic>{
      'openNow': instance.openNow,
      'weekdayText': instance.weekdayText,
    };
