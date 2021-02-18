import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:places_api_wrapper/src/models/glocation/glocation.dart';

part 'viewport.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class Viewport extends Equatable {
  Viewport({
    this.northeast,
    this.southwest,
  });

  final GLocation northeast;
  final GLocation southwest;

  Viewport copyWith({
    GLocation northeast,
    GLocation southwest,
  }) =>
      Viewport(
        northeast: northeast ?? this.northeast,
        southwest: southwest ?? this.southwest,
      );
  factory Viewport.fromJson(Map<String, dynamic> json) =>
      _$ViewportFromJson(json);
  Map<String, dynamic> toJson() => _$ViewportToJson(this);

  @override
  List<Object> get props => [
        northeast,
        southwest,
      ];
  @override
  bool get stringify => true;
}
