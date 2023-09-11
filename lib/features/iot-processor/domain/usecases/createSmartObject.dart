import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/core/resources/user_data.dart';
import 'package:sensorwave/core/usecase/usecase.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room_smart_object/room_smart_object.dart';
import 'package:sensorwave/features/iot-processor/domain/repository/room_repository.dart';

class CreateSmartObjectUseCase extends UseCase<DataState<RoomSmartObject>, Map<String,String>>{

  final RoomRepository _roomRepository;

  CreateSmartObjectUseCase(this._roomRepository);

  @override
  Future<DataState<RoomSmartObject>> call({required Map<String, String> params}) async{
    Future<DataState<RoomSmartObject>> response = _roomRepository.createSmartObject(UserData.clientAccessToken.access_token, params["name"]!, UserData.user.username, params["roomName"]! );
    return response;
  }

}