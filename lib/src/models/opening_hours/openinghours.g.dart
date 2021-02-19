// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openinghours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) {
  return $checkedNew('OpeningHours', json, () {
    final val = OpeningHours(
      openNow: $checkedConvert(json, 'open_now', (v) => v as bool?),
      weekdayText:
          $checkedConvert(json, 'weekday_text', (v) => v as List<dynamic>?),
      periods: $checkedConvert(
          json,
          'periods',
          (v) => (v as List<dynamic>?)
              ?.map((e) => GPeriod.fromJson(e as Map<String, dynamic>))
              .toList()),
    );
    return val;
  }, fieldKeyMap: const {'openNow': 'open_now', 'weekdayText': 'weekday_text'});
}

Map<String, dynamic> _$OpeningHoursToJson(OpeningHours instance) =>
    <String, dynamic>{
      'open_now': instance.openNow,
      'weekday_text': instance.weekdayText,
      'periods': instance.periods?.map((e) => e.toJson()).toList(),
    };
