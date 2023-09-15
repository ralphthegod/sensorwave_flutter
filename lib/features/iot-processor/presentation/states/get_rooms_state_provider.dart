import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/domain/providers/room_provider.dart';
import 'package:sensorwave/features/iot-processor/domain/usecases/getRoomsByOwnerUsername.dart';

class GetRoomsStateNotifier extends StateNotifier<DataState<List<Room>>> {
  GetRoomsStateNotifier(this.usecase) : super(const DataEmpty<List<Room>>()){
    fetch({});
  }
  final GetRoomsByOwnerUsernameUseCase usecase;

  void fetch(Map<String,String> params) async {
    state = await usecase.call(params: params);
    if(state is DataSuccess<List<Room>>){
      logger.d("Rooms fetched.");
    }
    else if (state is DataFailed<List<Room>>){
      logger.e("Rooms fetch error.${state.error}");
    }
  }
}

final getRoomsStateProvider = StateNotifierProvider<GetRoomsStateNotifier, DataState<List<Room>>>((ref) {
  return GetRoomsStateNotifier(ref.watch(getRoomsByOwnerUsernameProvider));
});