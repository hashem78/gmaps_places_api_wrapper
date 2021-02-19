import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:gmaps_places_api_wrapper/src/models/address_component/address_component.dart';
import 'package:gmaps_places_api_wrapper/src/models/geometry/geometry.dart';
import 'package:gmaps_places_api_wrapper/src/models/opening_hours/openinghours.dart';
import 'package:gmaps_places_api_wrapper/src/models/photo/photos.dart';
import 'package:gmaps_places_api_wrapper/src/models/pluscode/pluscode.dart';
import 'package:gmaps_places_api_wrapper/src/models/review/review.dart';

part 'place_details_result.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class PlaceDetailsResult extends Equatable {
  const PlaceDetailsResult({
    this.addressComponents,
    this.adrAddress,
    this.businessStatus,
    this.formattedAddress,
    this.formattedPhoneNumber,
    this.geometry,
    this.icon,
    this.internationalPhoneNumber,
    this.name,
    this.openingHours,
    this.photos,
    this.placeId,
    this.plusCode,
    this.rating,
    this.reviews,
    this.types,
    this.url,
    this.userRatingsTotal,
    this.utcOffset,
    this.vicinity,
    this.website,
  });

  final List<AddressComponent>? addressComponents;
  final String? adrAddress;
  final String? businessStatus;
  final String? formattedAddress;
  final String? formattedPhoneNumber;
  final Geometry? geometry;
  final String? icon;
  final String? internationalPhoneNumber;
  final String? name;
  final OpeningHours? openingHours;
  final List<Photo>? photos;
  final String? placeId;
  final PlusCode? plusCode;
  final double? rating;
  final List<Review>? reviews;
  final List<String>? types;
  final String? url;
  final int? userRatingsTotal;
  final int? utcOffset;
  final String? vicinity;
  final String? website;

  factory PlaceDetailsResult.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsResultFromJson(json);
  Map<String, dynamic> toJson() => _$PlaceDetailsResultToJson(this);

  @override
  List<Object?> get props {
    return [
      addressComponents,
      adrAddress,
      businessStatus,
      formattedAddress,
      formattedPhoneNumber,
      geometry,
      icon,
      internationalPhoneNumber,
      name,
      openingHours,
      photos,
      placeId,
      plusCode,
      rating,
      reviews,
      types,
      url,
      userRatingsTotal,
      utcOffset,
      vicinity,
      website,
    ];
  }

  @override
  bool get stringify => true;
}
