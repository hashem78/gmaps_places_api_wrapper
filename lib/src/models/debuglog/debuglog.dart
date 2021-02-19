import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'debuglog.g.dart';

@JsonSerializable(
  checked: true,
  createFactory: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class DebugLog extends Equatable {
  const DebugLog({
    this.line,
  });

  final List<dynamic>? line;

  DebugLog copyWith({
    List<dynamic>? line,
  }) =>
      DebugLog(
        line: line ?? this.line,
      );
  factory DebugLog.fromJson(Map<String, dynamic> json) =>
      _$DebugLogFromJson(json);
  Map<String, dynamic> toJson() => _$DebugLogToJson(this);
  @override
  List<Object?> get props => [line];
  @override
  bool get stringify => true;
}
