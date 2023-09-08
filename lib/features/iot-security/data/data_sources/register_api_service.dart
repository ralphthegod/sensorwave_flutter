import 'package:retrofit/retrofit.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/features/iot-security/domain/models/user/user.dart';
import 'package:dio/dio.dart';

part 'register_api_service.g.dart';

@RestApi(baseUrl: apiBaseUrl)
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  @POST("/users/register")
  Future<HttpResponse<User>> register(
    @Query("username") String username,
    @Query("password") String password,
  );
}