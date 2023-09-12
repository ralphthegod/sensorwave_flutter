
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/core/resources/proto/output/iot-processor.pb.dart';
import 'package:sensorwave/core/resources/user_data.dart';
import 'package:sensorwave/features/mqtt-processor/data/data_sources/mqtt_service.dart';
import 'package:sensorwave/features/mqtt-processor/domain/repository/mqtt_reactive_repository.dart';

class MqttReactiveRepositoryImpl extends MqttReactiveRepository{

  final MqttService _mqttService;
  final List<SmartObjectMessage> _messages = [];
  MqttReactiveRepositoryImpl(this._mqttService);
  
  @override
  void onNewMessage(SmartObjectMessage message) {
    logger.i("New message received: $message");
    if(_messages.length > 1000){
      _messages.clear();
    }
    _messages.add(message);
  }

  @override
  void disconnect() {
    return _mqttService.disconnect();
  }

  @override
  Future<void> connect(String clientIdentifier, String topic){
    return _mqttService.connect(UserData.user.username, topic, onNewMessage);
  }
  
  @override
  Stream<SmartObjectMessage> get stream async* {
    yield _messages.last;
  }
  
  

  
}