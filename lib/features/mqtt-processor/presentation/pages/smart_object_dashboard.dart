import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/proto/output/iot-processor.pb.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room_smart_object/room_smart_object.dart';
import 'package:sensorwave/features/mqtt-processor/data/mqtt_service_provider.dart';
import 'package:sensorwave/features/mqtt-processor/presentation/widgets/map_widget.dart';
import 'package:sensorwave/features/mqtt-processor/presentation/widgets/temp_plotter_widget.dart';
import 'package:sensorwave/features/shared/presentation/widgets/app_bar.dart';

class SmartObjectDashboard extends StatefulWidget{
  
  final Room room;
  final RoomSmartObject smartObject;

  SmartObjectDashboard({super.key, required this.room, required this.smartObject});

  @override
  State<StatefulWidget> createState() => _SmartObjectDashboardState();
}

class _SmartObjectDashboardState extends State<SmartObjectDashboard>{

  final Stream<SmartObjectMessage> stream = mqttRepo.update;
  Map<DataType, WidgetRef> dataToWidget = {};

  @override
  void dispose() {
    mqttRepo.disconnect();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    mqttRepo.connect(widget.room.id, widget.smartObject.id);
    return Scaffold(
      appBar: const MainAppBar(),
      body: Center(
        child: Padding(padding: const EdgeInsets.all(20),
        child: 
          SingleChildScrollView(
            child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(widget.smartObject.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          widget.smartObject.id,
                          style: const TextStyle(fontSize: 18,
                          color: Colors.grey
                          ),
                          
                        ),
                        const SizedBox(width: 10,),
                        GestureDetector(  
                          onTap:() async {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('SmartObject ID copied to clipboard'),
                              ),
                            );
                            await Clipboard.setData(ClipboardData(text: "${widget.smartObject.id}"));
                          },
                          child: const Icon(Icons.copy, color: Colors.grey,),
                        )
                    ],
                  ),
                  
                  const SizedBox(height: 20),

                  TemperaturePlotterWidget(stream: stream),
                  const SizedBox(height: 20),
                  Stack(
                    children: [MapViewer(stream: stream)]
                  ),
                  const SizedBox(height: 300),
                ],
              ),
            )
        )
      ),
    );
  }
}

