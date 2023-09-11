import 'package:sensorwave/core/resources/proto/output/iot-processor.pb.dart';

abstract class MqttReactiveRepository {

  Future<void> connect(String clientIdentifier, String topic);
  void disconnect();

  void onNewMessage(SmartObjectMessage message);

  Stream<SmartObjectMessage> get stream;

}