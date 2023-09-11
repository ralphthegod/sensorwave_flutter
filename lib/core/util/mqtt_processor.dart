import 'dart:typed_data';

import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/core/resources/proto/output/iot-processor.pb.dart';

class MqttMessageProcessor {


  SmartObjectMessage processBuffer(ByteBuffer smartObjectMessagePayload) {
    final SmartObjectMessage smartObjectMessage = SmartObjectMessage.fromBuffer(smartObjectMessagePayload.asInt16List());
    return smartObjectMessage;
  }

  Object? processData(SmartObjectMessage smartObjectMessage){
    // TODO: implement processData
  }

  void logData(SmartObjectMessage smartObjectMessage){
    for (var data in smartObjectMessage.data) {
      final anyData = data.data;
      switch(data.type){
        case DataType.HUMIDITY:
          logger.d(anyData.unpackInto(Humidity()));
          break;
        case DataType.POSITION:
          logger.d(anyData.unpackInto(Position()));
          break;
        case DataType.STATUS:
          logger.d(anyData.unpackInto(Status()));
          break;
        case DataType.TEMPERATURE:
          logger.d(anyData.unpackInto(Temperature()));
          break;
        default:
          logger.e("No data type found for message");
          break;
      }
    }
  }
  
  Type getDataType(DataType type){
    switch(type){
      case DataType.HUMIDITY:
        return Humidity;
      case DataType.POSITION:
        return Position;
      case DataType.STATUS:
        return Status;
      case DataType.TEMPERATURE:
        return Temperature;
      default:
        return Object;
    }
  }
    

}