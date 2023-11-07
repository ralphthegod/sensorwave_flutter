import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room_smart_object/room_smart_object.dart';
import 'package:sensorwave/features/iot-processor/presentation/pages/create_smart_objects_page.dart';
import 'package:sensorwave/features/iot-processor/presentation/states/get_smart_objects_provider.dart';
import 'package:sensorwave/features/iot-processor/presentation/widgets/smart_object_item.dart';
import 'package:sensorwave/features/mqtt-processor/presentation/pages/smart_object_dashboard.dart';
import 'package:sensorwave/features/shared/presentation/widgets/app_bar.dart';

class SmartObjectsPage extends StatefulWidget{
  
  final Room room;

  SmartObjectsPage({super.key, required this.room});

  @override
  State<StatefulWidget> createState() => _SmartObjectsPageState();
}

class _SmartObjectsPageState extends State<SmartObjectsPage>{

  late BuildContext context;
  late DataState<List<RoomSmartObject>> state;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => CreateSmartObjectPage(roomName: widget.room.name)));
          if(result is DataSuccess<RoomSmartObject>){
            setState(() {
              widget.room.smartObjects.add(result.data!);
            });
          } 
        },
        child: const Icon(Icons.add),
      ),
      appBar: const MainAppBar(),
      body:
          SingleChildScrollView(
          child: Column(
            mainAxisSize:MainAxisSize.min,
            children: [
            const SizedBox(height: 30,),

            Text(
                  'Smart Objects in ${widget.room.name}',
                  style: const TextStyle(fontSize: 32),  
                ),

            const SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    widget.room.id,
                    style: const TextStyle(fontSize: 18,
                    color: Colors.grey
                    ),
                    
                  ),
                  const SizedBox(width: 10,),
                  GestureDetector(  
                    onTap:() async {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Room ID copied to clipboard'),
                        ),
                      );
                      await Clipboard.setData(ClipboardData(text: "${widget.room.id}"));
                    },
                    child: const Icon(Icons.copy, color: Colors.grey,),
                  )
              ],
            ),
              
            const SizedBox(height: 30,),


            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: widget.room.smartObjects.length,
              itemBuilder: (context, index) {
                return SmartObjectListItem(smartObject: widget.room.smartObjects[index], openSmartObjectCallback: _openSmartObjectCallback);
              },
            )

          ],)
        )
    
    );
  }

  void _openSmartObjectCallback(RoomSmartObject smartObject) async {
    final result = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => SmartObjectDashboard(room: widget.room, smartObject: smartObject,)));
  }

}