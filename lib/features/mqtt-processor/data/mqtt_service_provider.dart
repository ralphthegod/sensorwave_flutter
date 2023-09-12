
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/proto/output/iot-processor.pb.dart';
import 'package:sensorwave/features/mqtt-processor/data/data_sources/mqtt_service.dart';
import 'package:sensorwave/features/mqtt-processor/data/repository/mqtt_reactive_repository_impl.dart';
import 'package:sensorwave/features/mqtt-processor/domain/repository/mqtt_reactive_repository.dart';

/**final mqttRepositoryStreamProvider = StreamProvider<List<SmartObjectMessage>>((ref) async* { 
  final mqttService = MqttService();
  final mqttRepository = MqttReactiveRepositoryImpl(mqttService);
  await mqttRepository.connect("clientIdentifier", "topic");

  ref.onDispose(() { 
    mqttRepository.disconnect();});

  await for (final message in mqttRepository.stream) {
    yield [message];
  }
});*/