import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room_smart_object/room_smart_object.dart';
import 'package:sensorwave/features/iot-processor/domain/providers/room_provider.dart';
import 'package:sensorwave/features/iot-processor/domain/usecases/createSmartObject.dart';

class CreateSmartObjectStateNotifier extends StateNotifier<DataState<RoomSmartObject>> {
  CreateSmartObjectStateNotifier(this.usecase) : super(const DataEmpty<RoomSmartObject>());

  final CreateSmartObjectUseCase usecase;

  void createSmartObject(Map<String,String> params, BuildContext context) async {
    state = const DataLoading<RoomSmartObject>();
    state = await usecase.call(params: params);
    if(state is DataSuccess){
      logger.d("SmartObject created.");
      if (context.mounted){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Smart object created."),
        ));   
        final result = state;
        state = const DataEmpty<RoomSmartObject>();
        Navigator.pop(context, result);
      }
    }
    else if (state is DataFailed){
      logger.e("Smart object create error. ${state.error}");
    }
  }
}

final createSmartObjectStateProvider = StateNotifierProvider<CreateSmartObjectStateNotifier, DataState<RoomSmartObject>>((ref) {
  return CreateSmartObjectStateNotifier(ref.watch(createSmartObjectProvider));
});