import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:gmaps_places_api_wrapper/src/enums/response_status.dart';
import 'package:gmaps_places_api_wrapper/src/models/textsearch_result/text_search_result.dart';

part 'text_search_response.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class TextSearchResponse extends Equatable {
  const TextSearchResponse({
    this.htmlAttributions,
    this.nextPageToken,
    this.results,
    this.status,
  });

  final List<dynamic>? htmlAttributions;
  final String? nextPageToken;
  final List<TextSearchResult>? results;
  final ResponseStatus? status;

  factory TextSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$TextSearchResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TextSearchResponseToJson(this);

  @override
  List<Object?> get props => [
        htmlAttributions,
        nextPageToken,
        results,
        status,
      ];

  @override
  bool get stringify => true;

  TextSearchResponse copyWith({
    List<dynamic>? htmlAttributions,
    String? nextPageToken,
    List<TextSearchResult>? results,
    ResponseStatus? status,
  }) {
    return TextSearchResponse(
      htmlAttributions: htmlAttributions ?? this.htmlAttributions,
      nextPageToken: nextPageToken ?? this.nextPageToken,
      results: results ?? this.results,
      status: status ?? this.status,
    );
  }
}
