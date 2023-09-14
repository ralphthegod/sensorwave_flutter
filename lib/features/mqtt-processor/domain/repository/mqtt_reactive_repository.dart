import 'package:mqtt_client/mqtt_client.dart';

abstract class MqttReactiveRepository {

  void connect(String clientIdentifier, String roomId, String smartObjectId);
  void disconnect();

  void onMQTTStreamReady(Stream<List<MqttReceivedMessage<MqttMessage>>>? stream);

}