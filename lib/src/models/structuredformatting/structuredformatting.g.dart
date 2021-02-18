// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structuredformatting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StructuredFormatting _$StructuredFormattingFromJson(Map<String, dynamic> json) {
  return $checkedNew('StructuredFormatting', json, () {
    final val = StructuredFormatting(
      mainText: $checkedConvert(json, 'main_text', (v) => v as String),
      mainTextMatchedSubstrings: $checkedConvert(
          json,
          'main_text_matched_substrings',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : MatchedSubstring.fromJson(e as Map<String, dynamic>))
              ?.toList()),
      secondaryText:
          $checkedConvert(json, 'secondary_text', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'mainText': 'main_text',
    'mainTextMatchedSubstrings': 'main_text_matched_substrings',
    'secondaryText': 'secondary_text'
  });
}

Map<String, dynamic> _$StructuredFormattingToJson(
        StructuredFormatting instance) =>
    <String, dynamic>{
      'main_text': instance.mainText,
      'main_text_matched_substrings':
          instance.mainTextMatchedSubstrings?.map((e) => e?.toJson())?.toList(),
      'secondary_text': instance.secondaryText,
    };
