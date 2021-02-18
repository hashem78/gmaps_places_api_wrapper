import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:places_api_wrapper/src/enums/response_status.dart';

import 'package:places_api_wrapper/src/models/place_details_result/place_details_result.dart';

part 'place_details_response.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class PlaceDetailsResponse extends Equatable {
  PlaceDetailsResponse({
    this.htmlAttributions,
    this.result,
    this.status,
  });

  final List<dynamic> htmlAttributions;
  final PlaceDetailsResult result;
  final ResponseStatus status;
  factory PlaceDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PlaceDetailsResponseToJson(this);
  @override
  List<Object> get props => [htmlAttributions, result, status];

  @override
  bool get stringify => true;
}
