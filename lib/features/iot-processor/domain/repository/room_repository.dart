
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room_smart_object/room_smart_object.dart';

abstract class RoomRepository{

  Future<DataState<List<Room>>> getRoomsByOwnerUsername(String accessToken, String username);

  Future<DataState<RoomSmartObject>> createSmartObject(String accessToken, String name, String roomOwnerUsername, String roomName);
  
  Future<DataState<Room>> createRoom(String accessToken, String name, String roomOwnerUsername);

}