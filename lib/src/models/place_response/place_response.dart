import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:places_api_wrapper/src/enums/response_status.dart';

import 'package:places_api_wrapper/src/models/candidate/candidate.dart';
import 'package:places_api_wrapper/src/models/debuglog/debuglog.dart';

part 'place_response.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
)
class FindPlaceResponse extends Equatable {
  FindPlaceResponse({
    this.candidates,
    this.debugLog,
    this.status,
  });

  final List<Candidate> candidates;
  final DebugLog debugLog;
  final ResponseStatus status;

  FindPlaceResponse copyWith({
    List<Candidate> candidates,
    DebugLog debugLog,
    ResponseStatus status,
  }) =>
      FindPlaceResponse(
        candidates: candidates ?? this.candidates,
        debugLog: debugLog ?? this.debugLog,
        status: status ?? this.status,
      );
  factory FindPlaceResponse.fromJson(Map<String, dynamic> json) =>
      _$FindPlaceResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FindPlaceResponseToJson(this);
  @override
  List<Object> get props => [
        candidates,
        debugLog,
        status,
      ];
  @override
  bool get stringify => true;
}
