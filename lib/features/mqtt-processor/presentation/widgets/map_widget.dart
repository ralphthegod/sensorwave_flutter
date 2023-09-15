import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:sensorwave/core/resources/proto/output/iot-processor.pb.dart' as proto;
import 'package:syncfusion_flutter_maps/maps.dart';

class MapViewer extends StatefulWidget{

  Stream<proto.SmartObjectMessage> stream;

  MapViewer({super.key, required this.stream});

  @override
  State<StatefulWidget> createState() => _MapViewerState();
}

class _MapViewerState extends State<MapViewer>{

  late final MapTileLayerController _mapController;
  late MapZoomPanBehavior _zoomPanBehavior = _zoomPanBehavior = MapZoomPanBehavior(
    focalLatLng: const MapLatLng(27.1751, 78.0421),
    zoomLevel: 32);
  late List<LatLng> _markers;

  @override
  void initState(){
    super.initState();
    _markers = [const LatLng(36.27662812847283, 40.76405763626096)];
    _mapController = MapTileLayerController();
  }


  @override
  Widget build(BuildContext context) {

    widget.stream.listen((proto.SmartObjectMessage event) {
        for(proto.Data e in event.data){
        if(e.type == proto.DataType.POSITION){
          final proto.Position temp = e.data.unpackInto(proto.Position());
          if(context.mounted) {
            _markers[0] = LatLng(temp.latitude, temp.longitude);
            setState(() {
              _zoomPanBehavior.focalLatLng = MapLatLng(temp.latitude, temp.longitude);
              _mapController.updateMarkers([0]);
            });
          }
        }
      }
    });

    return Card(
      child:
        Container(
          height: 500,
          alignment: Alignment.centerLeft,
          child: SfMaps(  
            
            layers: [
              MapTileLayer(
                zoomPanBehavior: _zoomPanBehavior,
                initialFocalLatLng: const MapLatLng(36.27662812847283, 40.76405763626096),
                initialMarkersCount: _markers.length,
                markerBuilder: (BuildContext context, int index) {
                  return MapMarker(
                    latitude: _markers[index].latitude,
                    longitude: _markers[index].longitude,
                    child: const Icon(Icons.location_on, color: Colors.red),
                  );
                },
                controller: _mapController,
                urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
              )
            ],
          )
        )
      ,

    );
  }
}