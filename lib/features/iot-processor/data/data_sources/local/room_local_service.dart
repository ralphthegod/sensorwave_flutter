import 'dart:convert';

import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room_smart_object/room_smart_object.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RoomLocalService{

  late SharedPreferences sharedPreferences;

  RoomLocalService(){
    SharedPreferences.getInstance().then((value) => sharedPreferences = value);
  }

  Future<List<Room>> getRoomsByOwnerUsername(String username) async {
    String ? roomsJson = sharedPreferences.getString(username);
    if(roomsJson == null){
      return [];
    }
    return List<Room>.from(json.decode(roomsJson).map((x) => Room.fromJson(x)));
  }

  Future<RoomSmartObject> createSmartObject(String name, String roomOwnerUsername, String roomName) async {
    String ? roomsJson = sharedPreferences.getString(roomOwnerUsername);
    List<Room> rooms = [];
    if(roomsJson != null){
      rooms = List<Room>.from(json.decode(roomsJson).map((x) => Room.fromJson(x)));
    }
    Room room = rooms.firstWhere((element) => element.name == roomName);
    RoomSmartObject roomSmartObject = RoomSmartObject(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      roomOwnerUsername: roomOwnerUsername,
      createdAt: DateTime.now(),
    );
    room.smartObjects.add(roomSmartObject);
    await sharedPreferences.setString(roomOwnerUsername, json.encode(rooms));
    return roomSmartObject;
  }

  Future<Room> createRoom(String name, String roomOwnerUsername) async {
    String ? roomsJson = sharedPreferences.getString(roomOwnerUsername);
    List<Room> rooms = [];
    if(roomsJson != null){
      rooms = List<Room>.from(json.decode(roomsJson).map((x) => Room.fromJson(x)));
    }
    Room room = Room(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      roomOwnerUsername: roomOwnerUsername,
      smartObjects: [],
      createdAt: DateTime.now(),
    );
    rooms.add(room);
    await sharedPreferences.setString(roomOwnerUsername, json.encode(rooms));
    return room;
  }
}