import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:places_api_wrapper/src/models/period/period.dart';

part 'openinghours.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class OpeningHours extends Equatable {
  OpeningHours({
    this.openNow,
    this.weekdayText,
    this.periods,
  });

  final bool openNow;
  final List<dynamic> weekdayText;
  final List<GPeriod> periods;

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

  OpeningHours copyWith({
    bool openNow,
    List<dynamic> weekdayText,
    List<GPeriod> periods,
  }) {
    return OpeningHours(
      openNow: openNow ?? this.openNow,
      weekdayText: weekdayText ?? this.weekdayText,
      periods: periods ?? this.periods,
    );
  }
}
