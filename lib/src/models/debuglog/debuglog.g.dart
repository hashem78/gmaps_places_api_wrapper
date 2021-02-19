// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debuglog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DebugLog _$DebugLogFromJson(Map<String, dynamic> json) {
  return $checkedNew('DebugLog', json, () {
    final val = DebugLog(
      line: $checkedConvert(json, 'line', (v) => v as List<dynamic>?),
    );
    return val;
  });
}

Map<String, dynamic> _$DebugLogToJson(DebugLog instance) => <String, dynamic>{
      'line': instance.line,
    };
