import 'package:sensorwave/core/event/observer.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/core/usecase/usecase.dart';
import 'package:sensorwave/features/iot-security/domain/models/client_access_token/client_access_token.dart';
import 'package:sensorwave/features/iot-security/domain/repository/auth_repository.dart';

class LoginUseCase extends UseCase<DataState<ClientAccessToken>, Map<String,String>>{
  final AuthRepository _authRepository;
  
  LoginUseCase(this._authRepository, List<UseCaseObserver> observers){
    this.observers = observers;
  }

  @override
  Future<DataState<ClientAccessToken>> call({required Map<String,String> params}) async {
    DataState<ClientAccessToken> response = await _authRepository.login(params["username"]!, params["password"]!);
    if(response is DataSuccess){
      notifyObservers(response.data);
    }
    return response;
  }

}
