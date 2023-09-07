import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:dio/dio.dart' as dio;
import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';

part 'room_api_service.g.dart';

@RestApi(baseUrl: apiBaseUrl)
abstract class RoomApiService{
  factory RoomApiService(dio.Dio dio, {String baseUrl}) = _RoomApiService;

  @POST("/rooms/createRoom")
  Future<HttpResponse<Room>> createRoom(
    @Header("Authorization") String accessToken,
    @Query("name") String name,
    @Query("roomOwnerUsername") String roomOwnerUsername,
  );

  @GET("/rooms/{roomOwnerUsername}")
  Future<HttpResponse<List<Room>>> getRoomsByOwnerUsername(
    @Header("Authorization") String accessToken,
    @Path("roomOwnerUsername") @Query("roomOwnerUsername") String roomOwnerUsername,
  );

  
}