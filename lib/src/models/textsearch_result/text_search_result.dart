import 'package:equatable/equatable.dart';
import 'package:gmaps_places_api_wrapper/src/enums/place_types.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:gmaps_places_api_wrapper/src/enums/bussiness_status.dart';
import 'package:gmaps_places_api_wrapper/src/models/geometry/geometry.dart';
import 'package:gmaps_places_api_wrapper/src/models/opening_hours/openinghours.dart';
import 'package:gmaps_places_api_wrapper/src/models/photo/photos.dart';
import 'package:gmaps_places_api_wrapper/src/models/pluscode/pluscode.dart';

part 'text_search_result.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class TextSearchResult extends Equatable {
  const TextSearchResult({
    this.businessStatus,
    this.formattedAddress,
    this.geometry,
    this.icon,
    this.name,
    this.openingHours,
    this.photos,
    this.placeId,
    this.plusCode,
    this.priceLevel,
    this.rating,
    this.reference,
    this.types,
    this.userRatingsTotal,
  });

  final BusinessStatus? businessStatus;
  final String? formattedAddress;
  final Geometry? geometry;
  final String? icon;
  final String? name;
  final OpeningHours? openingHours;
  final List<Photo>? photos;
  final String? placeId;
  final PlusCode? plusCode;
  final int? priceLevel;
  final double? rating;
  final String? reference;
  final List<PlaceType>? types;
  final int? userRatingsTotal;

  factory TextSearchResult.fromJson(Map<String, dynamic> json) =>
      _$TextSearchResultFromJson(json);
  Map<String, dynamic> toJson() => _$TextSearchResultToJson(this);

  @override
  List<Object?> get props {
    return [
      businessStatus,
      formattedAddress,
      geometry,
      icon,
      name,
      openingHours,
      photos,
      placeId,
      plusCode,
      priceLevel,
      rating,
      reference,
      types,
      userRatingsTotal,
    ];
  }

  @override
  bool get stringify => true;
}
