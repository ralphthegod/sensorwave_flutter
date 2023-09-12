import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/domain/providers/room_provider.dart';
import 'package:sensorwave/features/iot-processor/domain/usecases/createRoom.dart';

class CreateRoomStateNotifier extends StateNotifier<Future<DataState<Room>>> {
  CreateRoomStateNotifier(super.state , this.usecase);
  final CreateRoomUseCase usecase;

  void fetch(Map<String,String> params) async {
    state = usecase.call(params: params);
  }
}

final createRoomStateProvider = StateNotifierProvider<CreateRoomStateNotifier, Future<DataState<Room>>>((ref) {
  return CreateRoomStateNotifier(ref.read(createRoomProvider).call(params: {}), ref.watch(createRoomProvider));
});