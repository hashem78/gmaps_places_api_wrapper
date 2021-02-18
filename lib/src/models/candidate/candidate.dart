import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:gmaps_places_api_wrapper/src/models/geometry/geometry.dart';
import 'package:gmaps_places_api_wrapper/src/models/opening_hours/openinghours.dart';
import 'package:gmaps_places_api_wrapper/src/models/photo/photos.dart';

part 'candidate.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class Candidate extends Equatable {
  const Candidate({
    this.formattedAddress,
    this.geometry,
    this.name,
    this.openingHours,
    this.photos,
    this.rating,
  });

  final String formattedAddress;
  final Geometry geometry;
  final String name;
  final OpeningHours openingHours;
  final List<Photo> photos;
  final double rating;

  Candidate copyWith({
    String formattedAddress,
    Geometry geometry,
    String name,
    OpeningHours openingHours,
    List<Photo> photos,
    double rating,
  }) =>
      Candidate(
        formattedAddress: formattedAddress ?? this.formattedAddress,
        geometry: geometry ?? this.geometry,
        name: name ?? this.name,
        openingHours: openingHours ?? this.openingHours,
        photos: photos ?? this.photos,
        rating: rating ?? this.rating,
      );
  factory Candidate.fromJson(Map<String, dynamic> json) =>
      _$CandidateFromJson(json);
  Map<String, dynamic> toJson() => _$CandidateToJson(this);

  @override
  List<Object> get props => [
        formattedAddress,
        geometry,
        name,
        openingHours,
        photos,
        rating,
      ];
  @override
  bool get stringify => true;
}
