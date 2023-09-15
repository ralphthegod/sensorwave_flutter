import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/presentation/states/create_room_state_provider.dart';
import 'package:sensorwave/features/iot-processor/presentation/states/create_smart_object_provider.dart';
import 'package:sensorwave/features/shared/presentation/widgets/app_bar.dart';
import 'package:sensorwave/features/shared/presentation/widgets/input/text_field.dart';
import 'package:sensorwave/features/shared/presentation/widgets/interaction/elevated_button.dart';

class CreateSmartObjectPage extends ConsumerWidget{
  
  final TextEditingController nameFieldController = TextEditingController();

  // ignore: prefer_typing_uninitialized_variables
  late var state;
  late WidgetRef ref;
  late BuildContext context;
  final String roomName;

  CreateSmartObjectPage({super.key, required this.roomName});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    this.ref = ref;
    this.context = context;
    state = ref.watch(createSmartObjectStateProvider);
    return Scaffold(
      appBar: const MainAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Create a smart object',
                  style: TextStyle(fontSize: 32),  
                ),
                const SizedBox(height: 40),
                MainTextField(controller: nameFieldController, hintText: "Smart object name"),
                const SizedBox(height: 30),

                Consumer(builder: (context, ref, child) {
                  final state = ref.watch(createSmartObjectStateProvider);
                  if (state is DataLoading) {
                    return const CircularProgressIndicator();
                  } else if(state is DataEmpty || state is DataFailed) {
                    return MainElevatedButton(text: "Create", onPressed: _onCreateSmartObjectButtonPressed, fontSize: 21,);
                  }
                  return const Text("");
                }),

                const SizedBox(height: 10),
                Consumer(builder: (context, ref, child) {
                  final state = ref.watch(createSmartObjectStateProvider);
                  if (state is DataEmpty) {
                    return const Text("");
                  } else if (state is DataSuccess) {
                    return const Text('');
                  } else if (state is DataFailed) {
                    return Text('Error: ${state.error!.message}');
                  } else {
                    return const Text('');
                  }
                }),
              ],
            )
          )
        ),
      )
    );
  }

  void _onCreateSmartObjectButtonPressed(){
    ref.read(createSmartObjectStateProvider.notifier).createSmartObject({
      "name": nameFieldController.text,
      "roomName": roomName
      }, context);
  }
  
}