import 'package:sensorwave/features/iot-security/domain/models/client_access_token/client_access_token.dart';
import 'package:sensorwave/features/iot-security/domain/models/user/user.dart';


class UserData {
  static User user = const User();
  static ClientAccessToken clientAccessToken = const ClientAccessToken(access_token: "", expires_in: 0, refresh_expires_in: 0, refresh_token: "", token_type: "", not_before_policy: 0, session_state: "", scope: "");
  static String tokenForApi = "";
}
