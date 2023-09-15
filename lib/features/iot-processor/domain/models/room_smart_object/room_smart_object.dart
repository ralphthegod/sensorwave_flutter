import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'room_smart_object.freezed.dart';
part 'room_smart_object.g.dart';

@unfreezed
class RoomSmartObject with _$RoomSmartObject {
  const factory RoomSmartObject({
    required String id,
    required String name,
    @Default("") String roomOwnerUsername,
    required DateTime createdAt,
  }) = _RoomSmartObject;

  factory RoomSmartObject.fromJson(Map<String, Object?> json) => _$RoomSmartObjectFromJson(json);
}