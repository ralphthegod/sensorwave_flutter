import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room_smart_object/room_smart_object.dart';
import 'package:sensorwave/features/iot-processor/presentation/pages/smart_objects_page.dart';
import 'package:sensorwave/features/iot-processor/presentation/states/get_rooms_state_provider.dart';

class RoomListItem extends StatefulWidget{

  final Room room;
  final Function(Room) openRoomCallback;

  const RoomListItem({super.key, required this.room, required this.openRoomCallback});

  @override
  State<StatefulWidget> createState() => _RoomListItemState();
}

class _RoomListItemState extends State<RoomListItem>{

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() async {
        _onTap();
      },
      child: Card(
        child: Stack(
          children: [
            const SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: 
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),

                  Text(widget.room.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  Text(widget.room.id,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black38,
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            )
          ],
        )
      ),
    );
  }

  void _onTap() async {
    widget.openRoomCallback(widget.room);
  }

}