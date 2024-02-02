import 'package:core/config/api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiPreModule {
  @singleton
  Dio getDio(ApiConfig apiConfig) {
    final Dio dio = Dio(BaseOptions(baseUrl: apiConfig.baseUrl));
    if (kDebugMode) {
      dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
    }

    return dio;
  }
}
