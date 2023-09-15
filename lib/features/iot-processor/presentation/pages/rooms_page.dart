import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/presentation/pages/create_room_page.dart';
import 'package:sensorwave/features/iot-processor/presentation/pages/smart_objects_page.dart';
import 'package:sensorwave/features/iot-processor/presentation/states/get_rooms_state_provider.dart';
import 'package:sensorwave/features/iot-processor/presentation/widgets/room_item.dart';
import 'package:sensorwave/features/shared/presentation/widgets/app_bar.dart';

// ignore: must_be_immutable
class RoomsPage extends ConsumerWidget{

  late DataState<List<Room>> state;
  late WidgetRef ref;
  late BuildContext context;

  RoomsPage({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    this.ref = ref;
    this.context = context;
    state = ref.watch(getRoomsStateProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => CreateRoomPage()));
          if(result is DataSuccess) ref.read(getRoomsStateProvider.notifier).fetch({});
        },
        child: const Icon(Icons.add),
      ),
      appBar: const MainAppBar(automaticallyImplyLeading: false,),
      body:
          SingleChildScrollView(
          child: Column(
            mainAxisSize:MainAxisSize.min,
            children: [
            
            const SizedBox(height: 30,),

            const Text(
                  'Your rooms',
                  style: TextStyle(fontSize: 32),  
                ),
              
            const SizedBox(height: 30,),

            Consumer(builder:(context, ref, child) {
              if (state is DataLoading) {
                return const CircularProgressIndicator();
              } else if(state is DataEmpty ) {
                return const Text("No rooms found.");
              }else if(state is DataSuccess<List<Room>>){
                return _getRoomsListView();
              }
              else if(state is DataFailed){
                return const Text("Error in fetching rooms.");
              }
              else{
                return const Text("Unknown error.");
              }
            },)
          ],)
          
        ),
      );
  }

  void _openRoomCallback(Room room) async {
    final result = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => SmartObjectsPage(room: room)));
    ref.read(getRoomsStateProvider.notifier).fetch({});
  }

  Widget _getRoomsListView() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: state.data!.length,
      itemBuilder: (context, index) {
        return RoomListItem(room: state.data![index], openRoomCallback: _openRoomCallback);
      },
    );
  }

}