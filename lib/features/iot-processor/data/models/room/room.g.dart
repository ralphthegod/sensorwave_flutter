// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      id: json['id'] as String,
      name: json['name'] as String,
      roomOwnerUsername: json['roomOwnerUsername'] as String,
      smartObjects: (json['smartObjects'] as List<dynamic>)
          .map((e) => RoomSmartObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'roomOwnerUsername': instance.roomOwnerUsername,
      'smartObjects': instance.smartObjects,
      'createdAt': instance.createdAt.toIso8601String(),
    };
