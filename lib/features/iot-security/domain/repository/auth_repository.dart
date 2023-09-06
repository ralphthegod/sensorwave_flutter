
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-security/data/models/client_access_token/client_access_token.dart';
import 'package:sensorwave/features/iot-security/data/models/user/user.dart';

abstract class AuthRepository {
  
  Future<DataState<ClientAccessToken>> login(String username, String password);
  Future<DataState<User>> register(String username, String password);

}