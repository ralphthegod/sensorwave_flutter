// ignore_for_file: slash_for_doc_comments

import 'package:sensorwave/core/event/observer.dart';
import 'package:sensorwave/core/resources/user_data.dart';
import 'package:sensorwave/features/iot-security/domain/models/client_access_token/client_access_token.dart';

/**
 * Observer for the login use case.
 * 
 * This observer is responsible for storing the client access token in the UserData class.
 */

class LoginObserver extends UseCaseObserver {
  @override
  void onUseCaseSuccess(dynamic useCaseOutput) {

    ClientAccessToken clientAccessToken = useCaseOutput;
    UserData.clientAccessToken = clientAccessToken;
    UserData.tokenForApi = "Bearer ${UserData.clientAccessToken.access_token}";
  }
}