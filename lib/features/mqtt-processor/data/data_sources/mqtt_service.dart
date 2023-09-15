import 'dart:io';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/core/resources/user_data.dart';

class MqttService{
  
  late MqttClient client;
  late Function(Stream<List<MqttReceivedMessage<MqttMessage>>>?) onStreamReadyCallback;
  
  void connect(String clientIdentifier, String topic, Function(Stream<List<MqttReceivedMessage<MqttMessage>>>?) onStreamReadyCallback) async{

    client = MqttServerClient(mqttServerAddress, clientIdentifier);

    client.autoReconnect = true;
    client.logging(on: true);
    client.keepAlivePeriod = 60;
    client.onDisconnected = onDisconnected;
    client.onConnected = onConnected;
    client.onSubscribed = onSubscribed;
    client.onSubscribeFail = onSubscribeFailed;
    this.onStreamReadyCallback = onStreamReadyCallback;
    client.port = mqttServerPort;
    final connMess = MqttConnectMessage()
        .withClientIdentifier(clientIdentifier)
        .withWillQos(MqttQos.atLeastOnce)
        .startClean();
    client.connectionMessage = connMess;
 
    try{
      await client.connect(UserData.user.username, UserData.user.password);
    }
      on SocketException catch (e) {
      logger.e('MQTT Socket exception: $e');
      }
      on Exception catch (e) {
      logger.e('MQTT Exception: $e');
      client.disconnect();
    }

    if (client.connectionStatus!.state == MqttConnectionState.connected) {
      try{
        client.subscribe(topic, MqttQos.atLeastOnce);
      }
      catch(e){
        logger.e("MQTT Subscribe Error: $e");
      }
    } else {
      logger.e('MQTT Connection failed - disconnecting, status is ${client.connectionStatus}');
      client.disconnect();
    }
    
  }

  void disconnect(){
    client.disconnect();
  }

  void onSubscribeFailed(String topic){
    logger.e("MQTT Subscribed Failed on topic: $topic");
  }

  void onSubscribed(String topic){
    logger.d("MQTT Subscribed");
    if(client.updates == null){
          logger.e("MQTT Updates is null");
    }
    else {
      onStreamReadyCallback(client.updates);
    }
    
  }

  void onConnected() {
    logger.d("MQTT Connected");
  }

  void onDisconnected(){
    logger.d("MQTT Disconnected");
  }
}