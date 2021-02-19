import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:gmaps_places_api_wrapper/src/models/glocation/glocation.dart';
import 'package:gmaps_places_api_wrapper/src/models/viewport/viewport.dart';

part 'geometry.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class Geometry extends Equatable {
  const Geometry({
    this.location,
    this.viewport,
  });

  final GLocation? location;
  final Viewport? viewport;

  Geometry copyWith({
    GLocation? location,
    Viewport? viewport,
  }) =>
      Geometry(
        location: location ?? this.location,
        viewport: viewport ?? this.viewport,
      );
  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
  Map<String, dynamic> toJson() => _$GeometryToJson(this);
  @override
  bool get stringify => true;
  @override
  List<Object?> get props => [location, viewport];
}
