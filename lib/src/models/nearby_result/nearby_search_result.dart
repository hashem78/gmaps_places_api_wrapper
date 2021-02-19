import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:gmaps_places_api_wrapper/src/enums/bussiness_status.dart';
import 'package:gmaps_places_api_wrapper/src/enums/place_types.dart';
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

  NearbySearchResult copyWith({
    BusinessStatus? businessStatus,
    Geometry? geometry,
    String? icon,
    String? name,
    OpeningHours? openingHours,
    List<Photo>? photos,
    String? placeId,
    PlusCode? plusCode,
    int? priceLevel,
    double? rating,
    String? reference,
    List<PlaceType>? types,
    int? userRatingsTotal,
    String? vicinity,
    bool? permanentlyClosed,
  }) {
    return NearbySearchResult(
      businessStatus: businessStatus ?? this.businessStatus,
      geometry: geometry ?? this.geometry,
      icon: icon ?? this.icon,
      name: name ?? this.name,
      openingHours: openingHours ?? this.openingHours,
      photos: photos ?? this.photos,
      placeId: placeId ?? this.placeId,
      plusCode: plusCode ?? this.plusCode,
      priceLevel: priceLevel ?? this.priceLevel,
      rating: rating ?? this.rating,
      reference: reference ?? this.reference,
      types: types ?? this.types,
      userRatingsTotal: userRatingsTotal ?? this.userRatingsTotal,
      vicinity: vicinity ?? this.vicinity,
      permanentlyClosed: permanentlyClosed ?? this.permanentlyClosed,
    );
  }
}
