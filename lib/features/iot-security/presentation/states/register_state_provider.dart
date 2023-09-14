import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-security/domain/models/user/user.dart';
import 'package:sensorwave/features/iot-security/domain/providers/register_provider.dart';
import 'package:sensorwave/features/iot-security/domain/usecases/register.dart';

class RegisterStateNotifier extends StateNotifier<DataState<User>> {
  RegisterStateNotifier(this.usecase) : super(const DataEmpty<User>());
  final RegisterUseCase usecase;

  void register(Map<String,String> params, BuildContext context) async {
    state = const DataLoading<User>();
    state = await usecase.call(params: params);
    if(state is DataSuccess<User>){
      logger.d("User registered. Authentication required.");
      if (context.mounted){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Registration successful. Please login."),
        ));   
        Navigator.of(context).pop();
      }
    }
    else{
      logger.d("Registration error.");
    }
  }
}

final registerStateProvider = StateNotifierProvider<RegisterStateNotifier, DataState<User>>((ref) {
  // ignore: null_argument_to_non_null_type
  return RegisterStateNotifier(ref.watch(registerProvider));
});