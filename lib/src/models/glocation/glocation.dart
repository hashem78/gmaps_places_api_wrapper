import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'glocation.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class GLocation extends Equatable {
  const GLocation({
    this.lat,
    this.lng,
  });

  final double lat;
  final double lng;

  GLocation copyWith({
    double lat,
    double lng,
  }) =>
      GLocation(
        lat: lat ?? this.lat,
        lng: lng ?? this.lng,
      );

  @override
  List<Object> get props => [
        lat,
        lng,
      ];
  @override
  String toString() {
    return '$lat,$lng';
  }

  factory GLocation.fromJson(Map<String, dynamic> json) =>
      _$GLocationFromJson(json);
  Map<String, dynamic> toJson() => _$GLocationToJson(this);
}
