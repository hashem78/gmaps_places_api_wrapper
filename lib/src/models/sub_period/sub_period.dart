import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sub_period.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class SubPeriod extends Equatable {
  final int day;
  final String time;

  const SubPeriod(this.day, this.time);

  factory SubPeriod.fromJson(Map<String, dynamic> json) =>
      _$SubPeriodFromJson(json);
  Map<String, dynamic> toJson() => _$SubPeriodToJson(this);

  @override
  List<Object> get props => [day, time];

  @override
  bool get stringify => true;
}
