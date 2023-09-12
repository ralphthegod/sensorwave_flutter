import 'package:retrofit/retrofit.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/features/iot-security/domain/models/user/user.dart';
import 'package:dio/dio.dart' hide Headers;

part 'register_api_service.g.dart';

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  @FormUrlEncoded()
  @POST("/api/iot-security/users/register")
  Future<HttpResponse<User>> register(
    @Field("username") String username,
    @Field("password") String password,
  );
}