

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/provider/service_provider.dart';
import 'package:sensorwave/features/iot-processor/data/data_sources/local/room_local_service.dart';
import 'package:sensorwave/features/iot-processor/data/data_sources/room_api_service.dart';
import 'package:sensorwave/features/iot-processor/data/repository/room_repository_impl.dart';
import 'package:sensorwave/features/iot-processor/data/repository/room_repository_mock.dart';
import 'package:sensorwave/features/iot-processor/domain/repository/room_repository.dart';


final _roomApiServiceProvider = Provider<RoomApiService>((ref) => RoomApiService(dioProvider()));
final _roomLocalServiceProvider = Provider<RoomLocalService>((ref) => RoomLocalService());

final roomRepositoryProvider = Provider<RoomRepository>(
  (ref) => RoomRepositoryImpl(
    ref.watch(_roomApiServiceProvider),
  ),
);

final roomLocalRepositoryProvider = Provider<RoomRepository>(
  (ref) => RoomRepositoryMock(
    ref.watch(_roomLocalServiceProvider),
  ),
);