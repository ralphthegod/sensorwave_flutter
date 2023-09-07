import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room_smart_object/room_smart_object.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class Room with _$Room {
  const factory Room({
    required String id,
    required String name,
    required String roomOwnerUsername,
    required List<RoomSmartObject> smartObjects,
    required DateTime createdAt,
  }) = _Room;

  factory Room.fromJson(Map<String, Object?> json) => _$RoomFromJson(json);

}