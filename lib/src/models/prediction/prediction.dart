import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:gmaps_places_api_wrapper/src/enums/place_types_enum.dart';
import 'package:gmaps_places_api_wrapper/src/models/matchedsubstring/matchedsubstring.dart';
import 'package:gmaps_places_api_wrapper/src/models/structuredformatting/structuredformatting.dart';

import 'package:gmaps_places_api_wrapper/src/models/term/term.dart';

part 'prediction.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class Prediction extends Equatable {
  const Prediction({
    this.description,
    this.distanceMeters,
    this.id,
    this.matchedSubstrings,
    this.placeId,
    this.reference,
    this.terms,
    this.types,
    this.structuredFormatting,
  });

  final String description;
  final int distanceMeters;
  final String id;
  final List<MatchedSubstring> matchedSubstrings;
  final String placeId;
  final String reference;
  final List<Term> terms;
  final List<PlaceType> types;
  final StructuredFormatting structuredFormatting;

  factory Prediction.fromJson(Map<String, dynamic> json) =>
      _$PredictionFromJson(json);
  Map<String, dynamic> toJson() => _$PredictionToJson(this);
  @override
  List<Object> get props {
    return [
      description,
      distanceMeters,
      id,
      matchedSubstrings,
      placeId,
      reference,
      terms,
      types,
      structuredFormatting,
    ];
  }

  @override
  bool get stringify => true;
}
