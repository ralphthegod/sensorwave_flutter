import 'package:sensorwave/core/event/observer.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/core/usecase/usecase.dart';
import 'package:sensorwave/features/iot-security/domain/models/user/user.dart';
import 'package:sensorwave/features/iot-security/domain/repository/auth_repository.dart';

class RegisterUseCase extends UseCase<DataState<User>, Map<String,String>>{
  final AuthRepository _authRepository;
  
  RegisterUseCase(this._authRepository, List<UseCaseObserver> observers){
    this.observers = observers;
  }

  @override
  Future<DataState<User>> call({required Map<String,String> params}) async {
    DataState<User> response = await _authRepository.register(params["username"]!, params["password"]!, params["confirmPassword"]!);
    if(response is DataSuccess){
      notifyObservers(response.data);
    }
    return response;
  }

}