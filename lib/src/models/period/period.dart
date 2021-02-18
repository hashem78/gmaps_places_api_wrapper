import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:gmaps_places_api_wrapper/src/models/sub_period/sub_period.dart';

part 'period.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class GPeriod extends Equatable {
  final SubPeriod open;
  final SubPeriod close;

  const GPeriod(this.open, this.close);
  factory GPeriod.fromJson(Map<String, dynamic> json) =>
      _$GPeriodFromJson(json);
  Map<String, dynamic> toJson() => _$GPeriodToJson(this);
  @override
  List<Object> get props => [open, close];

  @override
  bool get stringify => true;
}
