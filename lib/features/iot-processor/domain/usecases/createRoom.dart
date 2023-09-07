import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/core/usecase/usecase.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/domain/repository/room_repository.dart';

class CreateRoomUseCase extends UseCase<DataState<Room>, Map<String,String>>{

  final RoomRepository _roomRepository;

  CreateRoomUseCase(this._roomRepository);

  @override
  Future<DataState<Room>> call({required Map<String, String> params}) async {
    DataState<Room> response = await _roomRepository.createRoom(params["accessToken"]!, params["name"]!, params["roomOwnerUsername"]!);
    return response;
  }
}