import 'package:sensorwave/core/event/observer.dart';

abstract class UseCase<Type,Params> {
  List<UseCaseObserver> observers = [];

  Future<Type> call({required Params params});

  void notifyObservers(dynamic data){

    for (var observer in observers) {
      observer.onUseCaseSuccess(data);
    }
  }
  
}