import 'package:flutter/material.dart';
import 'package:sensorwave/core/resources/proto/output/iot-processor.pb.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// ignore: must_be_immutable
class TemperaturePlotterWidget extends StatefulWidget{

  Stream<SmartObjectMessage> stream;

  TemperaturePlotterWidget({super.key, required this.stream});

  @override
  State<StatefulWidget> createState() => _TemperaturePlotterWidgetState();
}

class _TemperaturePlotterWidgetState extends State<TemperaturePlotterWidget>{

  ChartSeriesController? _chartSeriesController;
  List<ChartData> data = [];
  int count = 0;

  @override
  Widget build(BuildContext context) {
    widget.stream.listen((event) {
      for(Data e in event.data){
        if(e.type == DataType.TEMPERATURE){
          final Temperature temp = e.data.unpackInto(Temperature());
          _updateDataSource(temp);
        }
      }
    });
    
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 20, bottom: 5),
                child: Text("Temperature",
                    style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ), 
                )
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 20),
                child: data.isNotEmpty ? Text("${data.last.y} °C",
                    style: TextStyle(
                    fontSize: 18,
                    color: data.last.y > 30 ? Colors.red : Colors.green),
                    textAlign: TextAlign.left,
                  ) : const Text("No data",
                    style: TextStyle(
                    fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                )
          ),
          const SizedBox(height: 5,),
          Padding(padding: const EdgeInsets.all(10),
            child: 
              SfCartesianChart(
                primaryXAxis: NumericAxis(           
                    isVisible: false
                ),
                primaryYAxis: NumericAxis(
                    decimalPlaces: 3,
                    interval: 1,        
                    anchorRangeToVisiblePoints: false,
                ),
                series: <LineSeries<ChartData, int>>[
                  LineSeries<ChartData, int>(
                  onRendererCreated: (ChartSeriesController controller) {
                    _chartSeriesController = controller;
                  },
                  dataSource: data,
                  xValueMapper: (ChartData dat, _) => dat.x.toInt(),
                  yValueMapper: (ChartData dat, _) => dat.y,
                    )
                ],
              ),
          ),

        ],
      )
    );
  }

  void _updateDataSource(Temperature temp) {
    data.add(ChartData(count, temp.temperature));
    if (data.length == 20){
      data.removeAt(0);
      int tmp = (data.length) - 1;
      if(_chartSeriesController != null) {
        _chartSeriesController?.updateDataSource(addedDataIndexes: <int>[tmp],
        removedDataIndexes: <int>[0]);
      }
    }
    setState(() {});
    count = count + 1;
  }

}

class ChartData{
  ChartData(this.x, this.y);
  final num x;
  final num y;
}