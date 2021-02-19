import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'photos.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class Photo extends Equatable {
  const Photo({
    this.height,
    this.htmlAttributions,
    this.photoReference,
    this.width,
  });

  final int? height;
  final List<String>? htmlAttributions;
  final String? photoReference;
  final int? width;

  Photo copyWith({
    int? height,
    List<String>? htmlAttributions,
    String? photoReference,
    int? width,
  }) =>
      Photo(
        height: height ?? this.height,
        htmlAttributions: htmlAttributions ?? this.htmlAttributions,
        photoReference: photoReference ?? this.photoReference,
        width: width ?? this.width,
      );
  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
  Map<String, dynamic> toJson() => _$PhotoToJson(this);
  @override
  List<Object?> get props => [
        height,
        htmlAttributions,
        photoReference,
        width,
      ];
  @override
  bool get stringify => true;
}
