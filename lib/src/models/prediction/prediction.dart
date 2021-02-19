import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:gmaps_places_api_wrapper/src/enums/enums.dart';
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

  final String? description;
  final int? distanceMeters;
  final String? id;
  final List<MatchedSubstring>? matchedSubstrings;
  final String? placeId;
  final String? reference;
  final List<Term>? terms;
  final List<PlaceType>? types;
  final StructuredFormatting? structuredFormatting;

  factory Prediction.fromJson(Map<String, dynamic> json) =>
      _$PredictionFromJson(json);
  Map<String, dynamic> toJson() => _$PredictionToJson(this);
  @override
  List<Object?> get props {
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

  Prediction copyWith({
    String? description,
    int? distanceMeters,
    String? id,
    List<MatchedSubstring>? matchedSubstrings,
    String? placeId,
    String? reference,
    List<Term>? terms,
    List<PlaceType>? types,
    StructuredFormatting? structuredFormatting,
  }) {
    return Prediction(
      description: description ?? this.description,
      distanceMeters: distanceMeters ?? this.distanceMeters,
      id: id ?? this.id,
      matchedSubstrings: matchedSubstrings ?? this.matchedSubstrings,
      placeId: placeId ?? this.placeId,
      reference: reference ?? this.reference,
      terms: terms ?? this.terms,
      types: types ?? this.types,
      structuredFormatting: structuredFormatting ?? this.structuredFormatting,
    );
  }
}
