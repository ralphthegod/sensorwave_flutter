import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/core/usecase/usecase.dart';
import 'package:sensorwave/features/auth/data/models/client_access_token/client_access_token.dart';
import 'package:sensorwave/features/auth/domain/repository/auth_repository.dart';

class LoginUseCase extends UseCase<DataState<ClientAccessToken>, Map<String,String>>{
  final AuthRepository _authRepository;
  LoginUseCase(this._authRepository);
  
  @override
  Future<DataState<ClientAccessToken>> call({required Map<String,String> params}) async {
    return await _authRepository.login(params["username"]!, params["password"]!);
  }

}
