import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:places_api_wrapper/src/models/matchedsubstring/matchedsubstring.dart';

part 'structuredformatting.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class StructuredFormatting extends Equatable {
  StructuredFormatting({
    this.mainText,
    this.mainTextMatchedSubstrings,
    this.secondaryText,
  });

  final String mainText;
  final List<MatchedSubstring> mainTextMatchedSubstrings;
  final String secondaryText;

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) =>
      _$StructuredFormattingFromJson(json);
  Map<String, dynamic> toJson() => _$StructuredFormattingToJson(this);

  @override
  List<Object> get props =>
      [mainText, mainTextMatchedSubstrings, secondaryText];

  @override
  bool get stringify => true;
}
