import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/core/usecase/usecase.dart';
import 'package:sensorwave/features/iot-security/data/models/user/user.dart';
import 'package:sensorwave/features/iot-security/domain/repository/auth_repository.dart';

class RegisterUseCase extends UseCase<DataState<User>, Map<String,String>>{
  final AuthRepository _authRepository;
  RegisterUseCase(this._authRepository);
  
  @override
  Future<DataState<User>> call({required Map<String,String> params}) async {
    return await _authRepository.register(params["username"]!, params["password"]!);
  }

}