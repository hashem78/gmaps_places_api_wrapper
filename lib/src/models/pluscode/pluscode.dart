import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pluscode.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class PlusCode extends Equatable {
  PlusCode({
    this.compoundCode,
    this.globalCode,
  });

  final String compoundCode;
  final String globalCode;
  factory PlusCode.fromJson(Map<String, dynamic> json) =>
      _$PlusCodeFromJson(json);
  Map<String, dynamic> toJson() => _$PlusCodeToJson(this);

  @override
  List<Object> get props => [compoundCode, globalCode];
  @override
  bool get stringify => true;
}
