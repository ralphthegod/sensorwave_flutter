import 'package:retrofit/retrofit.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room_smart_object/room_smart_object.dart';

part 'room_api_service.g.dart';

@RestApi(baseUrl: apiBaseUrl)
abstract class RoomApiService{
  factory RoomApiService(Dio dio, {String baseUrl}) = _RoomApiService;

  @Headers(<String, dynamic> {
    "Content-Type": contentTypeJson,
  })
  @POST("/api/iot-processor/rooms/createRoom")
  Future<HttpResponse<Room>> createRoom(
    @Header("Authorization") String accessToken,
    @Field("name") String name,
  );

  @Headers(<String, dynamic> {
    "Content-Type": contentTypeJson,
  })
  @POST("/api/iot-processor/rooms/{roomName}/smartobjects")
  Future<HttpResponse<RoomSmartObject>> createSmartObject(
    @Header("Authorization") String accessToken,
    @Path("roomName") String roomName,
    @Field("name") String name,
    @Field("roomOwnerUsername") String username,
  );

  @Headers(<String, dynamic> {
    "Content-Type": contentTypeJson,
  })
  @GET("/api/iot-processor/rooms/{roomOwnerUsername}")
  Future<HttpResponse<List<Room>>> getRoomsByOwnerUsername(
    @Header("Authorization") String accessToken,
    @Path("roomOwnerUsername") String roomOwnerUsername,
  );

  
}