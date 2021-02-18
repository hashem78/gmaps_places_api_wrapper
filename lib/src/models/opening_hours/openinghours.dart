import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'openinghours.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
)
class OpeningHours extends Equatable {
  OpeningHours({
    this.openNow,
    this.weekdayText,
  });

  final bool openNow;
  final List<dynamic> weekdayText;

  OpeningHours copyWith({
    bool openNow,
    List<dynamic> weekdayText,
  }) =>
      OpeningHours(
        openNow: openNow ?? this.openNow,
        weekdayText: weekdayText ?? this.weekdayText,
      );
  factory OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursFromJson(json);
  Map<String, dynamic> toJson() => _$OpeningHoursToJson(this);
  @override
  List<Object> get props => [
        openNow,
        weekdayText,
      ];
  @override
  bool get stringify => true;
}
