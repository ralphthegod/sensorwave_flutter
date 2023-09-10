// ignore_for_file: slash_for_doc_comments

import 'package:sensorwave/core/event/observer.dart';
import 'package:sensorwave/core/resources/user_data.dart';
import 'package:sensorwave/features/iot-security/domain/models/user/user.dart';

/**
 * Observer for the register use case. 
 * 
 * This observer is responsible for storing the user in the UserData class.
 * 
 */

class RegisterObserver extends UseCaseObserver {
  @override
  void onUseCaseSuccess(dynamic useCaseOutput) {
    User user = useCaseOutput;
    UserData.user = user;
  }
}