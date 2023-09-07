// ignore_for_file: slash_for_doc_comments

import 'package:sensorwave/core/resources/data_state.dart';

/**
 * This class is used to observe the output of a use case.
 */

abstract class UseCaseObserver{
  void onUseCaseSuccess(
    DataSuccess useCaseOutput,
  );
}