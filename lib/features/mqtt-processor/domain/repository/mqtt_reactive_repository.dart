import 'package:mqtt_client/mqtt_client.dart';
import 'package:sensorwave/core/resources/proto/output/iot-processor.pb.dart';

abstract class MqttReactiveRepository {

  void connect(String roomId, String smartObjectId);
  void disconnect();

  void onMQTTStreamReady(Stream<List<MqttReceivedMessage<MqttMessage>>>? stream);

  Stream<SmartObjectMessage> get update;
}