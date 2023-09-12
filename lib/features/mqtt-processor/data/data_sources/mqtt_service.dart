import 'package:flutter/widgets.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/core/resources/proto/output/iot-processor.pb.dart';
import 'package:sensorwave/core/resources/user_data.dart';
import 'package:sensorwave/core/util/mqtt_processor.dart';

class MqttService{
  
  late MqttClient client;
  late Function(SmartObjectMessage) streamCallback;
  final MqttMessageProcessor _mqttMessageProcessor = MqttMessageProcessor();
  
  Future<MqttConnectionState?> connect(String clientIdentifier, String topic, Function(SmartObjectMessage) streamCallback) async{

    client = MqttServerClient.withPort(
      mqttServerAddress,
      clientIdentifier,
      mqttServerPort,
    );

    client.autoReconnect = true;

    client.onConnected = onConnected;
    client.onDisconnected = onDisconnected;
    this.streamCallback = streamCallback;

    final MqttClientConnectionStatus? mqttConnectionStatus;

    try {
      mqttConnectionStatus =
        await client.connect(UserData.user.username, UserData.user.password).catchError(
      (error) {
        return null;
      },
    );

     if (mqttConnectionStatus?.state == MqttConnectionState.connected) {
       client.subscribe(topic, MqttQos.atLeastOnce);
     }
    }
    catch(e){
      print(e.toString());
      return MqttConnectionState.faulted;
    }

    return mqttConnectionStatus?.state;
  }

  void disconnect(){
    client.disconnect();
  }

  void onConnected() {
    logger.d("MQTT Connected");
    print("MQTT Connected");
    client.updates?.listen(
      (List<MqttReceivedMessage<MqttMessage>> messages) {

        for (MqttReceivedMessage mqttReceivedMessage in messages) {

          final topic = mqttReceivedMessage.topic;

          final payload = mqttReceivedMessage.payload as MqttPublishMessage;
          final message = _mqttMessageProcessor.processBuffer(payload.payload.message.buffer);
  
          logger.d('received topic: "$topic", message<dynamic>: "$message"');
          _mqttMessageProcessor.logData(message);

          streamCallback(message);
        }
      },
    );
  }

  void onDisconnected(){
    logger.d("MQTT Disconnected");
  }
}