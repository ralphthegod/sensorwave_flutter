
import 'dart:async';

import 'package:mqtt_client/mqtt_client.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/core/resources/proto/output/iot-processor.pb.dart';
import 'package:sensorwave/core/resources/user_data.dart';
import 'package:sensorwave/core/util/mqtt_processor.dart';
import 'package:sensorwave/features/mqtt-processor/data/data_sources/mqtt_service.dart';
import 'package:sensorwave/features/mqtt-processor/domain/repository/mqtt_reactive_repository.dart';

class MqttReactiveRepositoryImpl extends MqttReactiveRepository{

  final MqttService _mqttService;
  MqttReactiveRepositoryImpl(this._mqttService);

  final MqttMessageProcessor _mqttMessageProcessor = MqttMessageProcessor();

  final StreamController<SmartObjectMessage> _updateController = StreamController<SmartObjectMessage>();
  Stream<SmartObjectMessage> get update => _updateController.stream;
  
  @override
  void disconnect() {
    return _mqttService.disconnect();
  }

  @override
  void connect(String clientIdentifier, String roomId, String smartObjectId) {
    _mqttService.connect(UserData.user.username, makeTopic(roomId, smartObjectId), onMQTTStreamReady);
  }

  @override
  void onMQTTStreamReady(Stream<List<MqttReceivedMessage<MqttMessage>>>? stream) {
    if(stream == null){
      return;
    }
    else{
      stream.listen(
        (List<MqttReceivedMessage<MqttMessage>> messages) {
          logger.w("MQTT Message Received");
            final MqttPublishMessage recMess = messages[0].payload as MqttPublishMessage;
            final SmartObjectMessage message = _mqttMessageProcessor.processBuffer(recMess.payload);
            _updateController.add(message);
          },
      );
    }
  }

  String makeTopic(String roomId, String smartObjectId) {
    return "room/$roomId/smartobject/$smartObjectId/message";
  }


}