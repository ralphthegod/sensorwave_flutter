import 'package:retrofit/retrofit.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/features/iot-security/domain/models/client_access_token/client_access_token.dart';
import 'package:dio/dio.dart';

part 'token_api_service.g.dart';

@RestApi(baseUrl: keycloakApiBaseUrl)
abstract class TokenApiService {
  factory TokenApiService(Dio dio, {String baseUrl}) = _TokenApiService;

  @POST('/token')
  Future<HttpResponse<ClientAccessToken>> getAccessToken(
    @Query("username") String username,
    @Query("password") String password,
    @Query("grant_type") String grantType,
    @Query("client_secret") String clientSecret,
    @Query("client_id") String clientId,
  );
}