import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room_smart_object/room_smart_object.dart';
import 'package:sensorwave/features/iot-processor/domain/providers/room_provider.dart';
import 'package:sensorwave/features/iot-processor/domain/usecases/createSmartObject.dart';

class CreateSmartObjectStateNotifier extends StateNotifier<Future<DataState<RoomSmartObject>>> {
  CreateSmartObjectStateNotifier(super.state , this.usecase);

  final CreateSmartObjectUseCase usecase;

  void fetch(Map<String,String> params) async {
    state = usecase.call(params: params);
  }
}

final createSmartObjectStateProvider = StateNotifierProvider<CreateSmartObjectStateNotifier, Future<DataState<RoomSmartObject>>>((ref) {
  return CreateSmartObjectStateNotifier(ref.read(createSmartObjectProvider).call(params: {"name": "", "roomName": ""}), ref.watch(createSmartObjectProvider));
});