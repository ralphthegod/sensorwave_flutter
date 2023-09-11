import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/domain/providers/room_provider.dart';
import 'package:sensorwave/features/iot-processor/domain/usecases/getRoomsByOwnerUsername.dart';

class GetRoomsStateNotifier extends StateNotifier<Future<DataState<List<Room>>>> {
  GetRoomsStateNotifier(super.state , this.usecase);
  final GetRoomsByOwnerUsernameUseCase usecase;

  void fetch(Map<String,String> params) async {
    state = usecase.call(params: params);
  }
}

final getRoomsStateProvider = StateNotifierProvider<GetRoomsStateNotifier, Future<DataState<List<Room>>>>((ref) {
  return GetRoomsStateNotifier(ref.read(getRoomsByOwnerUsernameProvider).call(params: {}), ref.watch(getRoomsByOwnerUsernameProvider));
});