// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    ErrorResponse(
      error: Error.fromJson(json['error'] as Map<String, dynamic>),
    );

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      code: json['code'] as int,
      message: json['message'] as String,
    );
