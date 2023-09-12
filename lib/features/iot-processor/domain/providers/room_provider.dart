
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/features/iot-processor/data/iot-processor_api_service_data_provider.dart';
import 'package:sensorwave/features/iot-processor/domain/usecases/createRoom.dart';
import 'package:sensorwave/features/iot-processor/domain/usecases/createSmartObject.dart';
import 'package:sensorwave/features/iot-processor/domain/usecases/getRoomsByOwnerUsername.dart';

// [CreateRoomUseCase] provider.
// Domain layer.

final createRoomProvider = Provider<CreateRoomUseCase>((ref) => CreateRoomUseCase(ref.watch(roomRepositoryProvider)));

final createSmartObjectProvider = Provider<CreateSmartObjectUseCase>((ref) => CreateSmartObjectUseCase(ref.watch(roomRepositoryProvider)));

final getRoomsByOwnerUsernameProvider = Provider<GetRoomsByOwnerUsernameUseCase>((ref) => GetRoomsByOwnerUsernameUseCase(ref.watch(roomRepositoryProvider)));