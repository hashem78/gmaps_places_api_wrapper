import 'package:equatable/equatable.dart';
import 'package:gmaps_places_api_wrapper/src/enums/place_types.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:gmaps_places_api_wrapper/src/enums/bussiness_status.dart';

import 'package:gmaps_places_api_wrapper/src/models/geometry/geometry.dart';
import 'package:gmaps_places_api_wrapper/src/models/opening_hours/openinghours.dart';
import 'package:gmaps_places_api_wrapper/src/models/photo/photos.dart';
import 'package:gmaps_places_api_wrapper/src/models/pluscode/pluscode.dart';

part 'nearby_search_result.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class NearbySearchResult extends Equatable {
  const NearbySearchResult({
    this.businessStatus,
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
    this.vicinity,
    this.permanentlyClosed,
  });

  final BusinessStatus? businessStatus;
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
  final String? vicinity;
  final bool? permanentlyClosed;

  factory NearbySearchResult.fromJson(Map<String, dynamic> json) =>
      _$NearbySearchResultFromJson(json);
  Map<String, dynamic> toJson() => _$NearbySearchResultToJson(this);

  @override
  List<Object?> get props {
    return [
      businessStatus,
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
      vicinity,
      permanentlyClosed,
    ];
  }

  @override
  bool get stringify => true;
}
