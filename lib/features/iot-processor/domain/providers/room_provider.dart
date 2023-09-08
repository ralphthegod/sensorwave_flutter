
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/features/iot-processor/data/iot-processor_api_service_data_provider.dart';
import 'package:sensorwave/features/iot-processor/domain/usecases/createRoom.dart';
import 'package:sensorwave/features/iot-processor/domain/usecases/getRoomsByOwnerUsername.dart';

// [CreateRoomUseCase] provider.
// Domain layer.

final createRoomProvider = isProduction ? 
  Provider<CreateRoomUseCase>((ref) => CreateRoomUseCase(ref.watch(roomRepositoryProvider)))
  :
  Provider<CreateRoomUseCase>((ref) => CreateRoomUseCase(ref.watch(roomLocalRepositoryProvider)));

final getRoomsByOwnerUsernameProvider = isProduction ? 
  Provider<GetRoomsByOwnerUsernameUseCase>((ref) => GetRoomsByOwnerUsernameUseCase(ref.watch(roomRepositoryProvider)))
  :
  Provider<GetRoomsByOwnerUsernameUseCase>((ref) => GetRoomsByOwnerUsernameUseCase(ref.watch(roomLocalRepositoryProvider)));