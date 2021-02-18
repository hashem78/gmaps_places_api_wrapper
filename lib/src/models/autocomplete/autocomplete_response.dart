import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:places_api_wrapper/src/enums/response_status.dart';
import 'package:places_api_wrapper/src/models/prediction/prediction.dart';

part 'autocomplete_response.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class AutocompleteResponse extends Equatable {
  AutocompleteResponse({
    this.status,
    this.predictions,
  });

  final ResponseStatus status;
  final List<Prediction> predictions;
  factory AutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AutocompleteResponseToJson(this);

  @override
  List<Object> get props => [status, predictions];

  @override
  bool get stringify => true;
}
