import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'term.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class Term extends Equatable {
  const Term({
    this.length,
    this.value,
    this.offset,
  });

  final int? length;
  final int? offset;
  final String? value;

  factory Term.fromJson(Map<String, dynamic> json) => _$TermFromJson(json);
  Map<String, dynamic> toJson() => _$TermToJson(this);

  @override
  List<Object?> get props => [length, value, offset];

  @override
  bool get stringify => true;
}
