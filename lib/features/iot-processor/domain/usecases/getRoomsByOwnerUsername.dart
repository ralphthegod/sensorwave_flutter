

import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/core/usecase/usecase.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/domain/repository/room_repository.dart';

class GetRoomsByOwnerUsernameUseCase extends UseCase<DataState<List<Room>>, Map<String,String>>{

  final RoomRepository _roomRepository;

  GetRoomsByOwnerUsernameUseCase(this._roomRepository);

  @override
  Future<DataState<List<Room>>> call({required Map<String, String> params}) async {
    DataState<List<Room>> response = await _roomRepository.getRoomsByOwnerUsername(params["accessToken"]!, params["username"]!);
    return response;
  }
}