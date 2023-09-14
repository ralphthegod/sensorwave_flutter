import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/domain/models/room/room.dart';
import 'package:sensorwave/features/iot-processor/presentation/states/get_rooms_state_provider.dart';
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
      appBar: const MainAppBar(automaticallyImplyLeading: false),
      body:  Center(
        child: SingleChildScrollView(
          child:
          Consumer(builder:(context, ref, child) {
            ref.read(getRoomsStateProvider.notifier).fetch({});
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
        )
      ),
    );
  }

  Widget _getRoomsListView() {
    return ListView.builder(
      itemCount: state.data!.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(state.data![index].name),
          subtitle: Text(state.data![index].id),
        );
      },
    );
  }

}