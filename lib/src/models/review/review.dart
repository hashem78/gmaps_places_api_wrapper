import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class Review extends Equatable {
  const Review({
    this.authorName,
    this.authorUrl,
    this.language,
    this.profilePhotoUrl,
    this.rating,
    this.relativeTimeDescription,
    this.text,
    this.time,
  });

  final String authorName;
  final String authorUrl;
  final String language;
  final String profilePhotoUrl;
  final int rating;
  final String relativeTimeDescription;
  final String text;
  final int time;
  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewToJson(this);

  @override
  List<Object> get props {
    return [
      authorName,
      authorUrl,
      language,
      profilePhotoUrl,
      rating,
      relativeTimeDescription,
      text,
      time,
    ];
  }

  @override
  bool get stringify => true;
}
