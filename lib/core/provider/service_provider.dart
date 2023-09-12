import 'package:dio/dio.dart';

Dio dioProvider(String apiBaseUrl) {
  final dio = Dio(BaseOptions(baseUrl: apiBaseUrl));
  return dio;
}

