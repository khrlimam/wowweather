import 'dart:convert';

import 'package:core/di.dart';
import 'package:dio/dio.dart';

import '../config/api.dart';

class ApiClient {
  final Dio _dio;
  final ApiConfig _apiConfig;

  ApiClient._(this._dio, this._apiConfig);

  static ApiClient init() {
    return ApiClient._(getIt<Dio>(), getIt<ApiConfig>());
  }

  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParams,
  }) {
    // Add additional function to throw if response value is null
    // May implement custom exception next
    if (queryParams == null) {
      queryParams = {"key": _apiConfig.apiKey};
    } else {
      queryParams["key"] = _apiConfig.apiKey;
    }
    return _dio.get<String>(path, queryParameters: queryParams).then(
        (Response<String> value) =>
            jsonDecode(value.data!) as Map<String, dynamic>);
  }
}
