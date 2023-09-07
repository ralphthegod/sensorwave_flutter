
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/data/models/room/room.dart';

abstract class RoomRepository{

  Future<DataState<List<Room>>> getRoomsByOwnerUsername(String accessToken, String username);
  
  Future<DataState<Room>> createRoom(String accessToken, String name, String roomOwnerUsername);

}