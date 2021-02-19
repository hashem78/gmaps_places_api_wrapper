import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'matchedsubstring.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class MatchedSubstring extends Equatable {
  const MatchedSubstring({
    this.length,
    this.offset,
  });

  final int? length;
  final int? offset;

  factory MatchedSubstring.fromJson(Map<String, dynamic> json) =>
      _$MatchedSubstringFromJson(json);
  Map<String, dynamic> toJson() => _$MatchedSubstringToJson(this);

  @override
  List<Object?> get props => [length, offset];

  @override
  bool get stringify => true;

  MatchedSubstring copyWith({
    int? length,
    int? offset,
  }) {
    return MatchedSubstring(
      length: length ?? this.length,
      offset: offset ?? this.offset,
    );
  }
}
