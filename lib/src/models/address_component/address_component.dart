import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_component.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class AddressComponent extends Equatable {
  const AddressComponent({
    this.longName,
    this.shortName,
    this.types,
  });

  final String? longName;
  final String? shortName;
  final List<String>? types;

  factory AddressComponent.fromJson(Map<String, dynamic> json) =>
      _$AddressComponentFromJson(json);
  Map<String, dynamic> toJson() => _$AddressComponentToJson(this);
  @override
  List<Object?> get props => [longName, shortName, types];

  @override
  bool get stringify => true;
}
