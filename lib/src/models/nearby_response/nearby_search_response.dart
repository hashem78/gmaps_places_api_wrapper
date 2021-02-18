import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:places_api_wrapper/src/enums/response_status.dart';

import 'package:places_api_wrapper/src/models/nearby_result/nearby_search_result.dart';

part 'nearby_search_response.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
)
class NearbySearchResponse extends Equatable {
  NearbySearchResponse({
    this.htmlAttributions,
    this.nextPageToken,
    this.results,
    this.status,
  });

  final List<dynamic> htmlAttributions;
  final String nextPageToken;
  final List<NearbySearchResult> results;
  final ResponseStatus status;

  factory NearbySearchResponse.fromJson(Map<String, dynamic> json) =>
      _$NearbySearchResponseFromJson(json);
  Map<String, dynamic> toJson() => _$NearbySearchResponseToJson(this);

  @override
  List<Object> get props => [
        htmlAttributions,
        nextPageToken,
        results,
        status,
      ];
  @override
  bool get stringify => true;
}
