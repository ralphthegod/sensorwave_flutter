import 'dart:io';

import 'package:dio/dio.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/data/data_sources/room_api_service.dart';
import 'package:sensorwave/features/iot-processor/data/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/domain/repository/room_repository.dart';

class RoomRepositoryImpl extends RoomRepository{

  final RoomApiService _roomApiService;
  RoomRepositoryImpl(this._roomApiService);
  

  @override
  Future<DataState<Room>> createRoom(String accessToken, String name, String roomOwnerUsername) async {
    try{
      final httpResponse = await _roomApiService.createRoom(accessToken, name, roomOwnerUsername);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions
          )
        );
      }
    }
    on DioException catch(e){
      return DataFailed(e);
    }


  }

  @override
  Future<DataState<List<Room>>> getRoomsByOwnerUsername(String accessToken, String username) async {
    try{
      final httpResponse = await _roomApiService.getRoomsByOwnerUsername(accessToken, username);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions
          )
        );
      }
    }
    on DioException catch(e){
      return DataFailed(e);
    }
  }
}