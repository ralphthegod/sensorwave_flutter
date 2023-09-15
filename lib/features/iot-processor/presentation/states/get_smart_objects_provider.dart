import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room_smart_object/room_smart_object.dart';

class GetSmartObjectsStateNotifier extends StateNotifier<DataState<List<RoomSmartObject>>> {
  GetSmartObjectsStateNotifier() : super(const DataEmpty<List<RoomSmartObject>>());

  void update(Map<String,List<RoomSmartObject>> params) async {
    state = await Future.delayed(const Duration(seconds: 1), () {
      return DataSuccess<List<RoomSmartObject>>(params["smartObjects"]!);
    });
    if(state is DataSuccess<List<RoomSmartObject>>){
      logger.d("SmartObjects updated.");
    }
    else if (state is DataFailed<List<RoomSmartObject>>){
      logger.e("SmartObjects update error.${state.error}");
    }
  }
}

final getSmartObjectsStateProvider = StateNotifierProvider<GetSmartObjectsStateNotifier, DataState<List<RoomSmartObject>>>((ref) {
  return GetSmartObjectsStateNotifier();
});