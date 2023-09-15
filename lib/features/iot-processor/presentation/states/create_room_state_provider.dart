import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/domain/providers/room_provider.dart';
import 'package:sensorwave/features/iot-processor/domain/usecases/createRoom.dart';

class CreateRoomStateNotifier extends StateNotifier<DataState<Room>> {
  CreateRoomStateNotifier(this.usecase) : super(const DataEmpty<Room>());
  final CreateRoomUseCase usecase;

  void createRoom(Map<String,String> params, BuildContext context) async {
    state = const DataLoading<Room>();
    state = await usecase.call(params: params);
    if(state is DataSuccess){
      logger.d("Room created.");
      if (context.mounted){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Room created."),
        ));   
        final result = state;
        state = const DataEmpty<Room>();
        Navigator.pop(context, result);
      }
    }
    else if (state is DataFailed){
      logger.e("Rooms create error. ${state.error}");
    }
  }
}

final createRoomStateProvider = StateNotifierProvider<CreateRoomStateNotifier, DataState<Room>>((ref) {
  return CreateRoomStateNotifier(ref.watch(createRoomProvider));
});