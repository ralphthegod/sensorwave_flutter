import 'package:sensorwave/features/mqtt-processor/data/data_sources/mqtt_service.dart';
import 'package:sensorwave/features/mqtt-processor/data/repository/mqtt_reactive_repository_impl.dart';
import 'package:sensorwave/features/mqtt-processor/domain/repository/mqtt_reactive_repository.dart';

final MqttReactiveRepository mqttRepo = MqttReactiveRepositoryImpl(
  MqttService()
);