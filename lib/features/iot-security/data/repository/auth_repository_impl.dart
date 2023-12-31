
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/core/resources/user_data.dart';
import 'package:sensorwave/features/iot-security/data/data_sources/register_api_service.dart';
import 'package:sensorwave/features/iot-security/data/data_sources/token_api_service.dart';
import 'package:sensorwave/features/iot-security/domain/models/client_access_token/client_access_token.dart';
import 'package:sensorwave/features/iot-security/domain/models/user/user.dart';
import 'package:sensorwave/features/iot-security/domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {

  final AuthApiService _authApiService;
  final TokenApiService _tokenApiService;
  AuthRepositoryImpl(this._authApiService, this._tokenApiService);

  @override
  Future<DataState<ClientAccessToken>> login(String username, String password) async{
    if(username == "") return DataFailed(DioException(error: "Username cannot be empty", message: "Username cannot be empty", requestOptions: RequestOptions()));
    if(password == "") return DataFailed(DioException(error: "Password cannot be empty", message: "Password cannot be empty", requestOptions: RequestOptions()));
    try {
      final httpResponse = await _tokenApiService.getAccessToken(
        username,
        password,
        tokenClientGrantType,
        tokenClientSecret,
        tokenClientId
      );
      
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        UserData.user = User(username: username, password: password);
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions
          )
        );
      }
    } on DioException catch(e){
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<User>> register(String username, String password, String confirmPassword) async {
    if(username == "") return DataFailed(DioException(error: "Username cannot be empty", message: "Username cannot be empty", requestOptions: RequestOptions()));
    if(password == "") return DataFailed(DioException(error: "Password cannot be empty", message: "Password cannot be empty", requestOptions: RequestOptions()));
    if(password != confirmPassword) return DataFailed(DioException(error: "Passwords do not match", message: "Passwords do not match", requestOptions: RequestOptions()));
    try {
      final httpResponse = await _authApiService.register(username, password);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions
          )
        );
      }
    } on DioException catch(e){
      return DataFailed(e);
    }
  }

}