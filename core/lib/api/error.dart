import 'package:freezed_annotation/freezed_annotation.dart';

part "error.g.dart";

@JsonSerializable()
class ErrorResponse {
  @JsonKey(name: "error")
  Error error;

  ErrorResponse({
    required this.error,
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);
}

@JsonSerializable()
class Error {
  @JsonKey(name: "code")
  int code;
  @JsonKey(name: "message")
  String message;

  Error({
    required this.code,
    required this.message,
  });

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);
}
