import 'package:flutter/material.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room_smart_object/room_smart_object.dart';

class SmartObjectListItem extends StatefulWidget{

  final RoomSmartObject smartObject;
  final Function(RoomSmartObject) openSmartObjectCallback;

  const SmartObjectListItem({super.key, required this.smartObject, required this.openSmartObjectCallback});

  @override
  State<StatefulWidget> createState() => _SmartObjectListItemState();
}

class _SmartObjectListItemState extends State<SmartObjectListItem>{

  @override
  Widget build(BuildContext context) {
    setState(() {
      
    });
    return GestureDetector(
      onTap:(){
        widget.openSmartObjectCallback(widget.smartObject);
      },
      child:
        Card(
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

                  Text(widget.smartObject.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  Text(widget.smartObject.id,
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

}