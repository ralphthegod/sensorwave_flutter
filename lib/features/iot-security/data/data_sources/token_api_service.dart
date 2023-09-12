import 'package:retrofit/retrofit.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/features/iot-security/domain/models/client_access_token/client_access_token.dart';
import 'package:dio/dio.dart' hide Headers;

part 'token_api_service.g.dart';

@RestApi()
abstract class TokenApiService {
  factory TokenApiService(Dio dio, {String baseUrl}) = _TokenApiService;

  @FormUrlEncoded()
  @POST('/token')
  Future<HttpResponse<ClientAccessToken>> getAccessToken(
    @Field("username") String username,
    @Field("password") String password,
    @Field("grant_type") String grantType,
    @Field("client_secret") String clientSecret,
    @Field("client_id") String clientId,
  );
}