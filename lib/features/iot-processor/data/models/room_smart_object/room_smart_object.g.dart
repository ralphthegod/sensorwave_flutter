// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_smart_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomSmartObject _$$_RoomSmartObjectFromJson(Map<String, dynamic> json) =>
    _$_RoomSmartObject(
      id: json['id'] as String,
      name: json['name'] as String,
      roomOwnerUsername: json['roomOwnerUsername'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_RoomSmartObjectToJson(_$_RoomSmartObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'roomOwnerUsername': instance.roomOwnerUsername,
      'createdAt': instance.createdAt.toIso8601String(),
    };
