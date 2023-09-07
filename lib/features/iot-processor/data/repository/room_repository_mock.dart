

import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/data/data_sources/local/room_local_service.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/domain/repository/room_repository.dart';

class RoomRepositoryMock extends RoomRepository{

  RoomLocalService _roomLocalService;
  RoomRepositoryMock(this._roomLocalService);

  @override
  Future<DataState<List<Room>>> getRoomsByOwnerUsername(String accessToken, String username) async {
    List<Room> rooms = await _roomLocalService.getRoomsByOwnerUsername(username);
    return DataSuccess(rooms);
  }

  @override
  Future<DataState<Room>> createRoom(String accessToken, String name, String roomOwnerUsername) async {
    Room room = await _roomLocalService.createRoom(name, roomOwnerUsername);
    return DataSuccess(room);
  }

}