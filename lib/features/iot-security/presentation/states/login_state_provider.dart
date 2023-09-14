import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-processor/presentation/pages/rooms_page.dart';
import 'package:sensorwave/features/iot-security/domain/models/client_access_token/client_access_token.dart';
import 'package:sensorwave/features/iot-security/domain/providers/login_provider.dart';
import 'package:sensorwave/features/iot-security/domain/usecases/login.dart';

class LoginStateNotifier extends StateNotifier<DataState<ClientAccessToken>> {
  LoginStateNotifier(this.usecase) : super(const DataEmpty<ClientAccessToken>());
  final LoginUseCase usecase;

  void login(Map<String,String> params, context) async {
    state = const DataLoading<ClientAccessToken>();
    state = await usecase.call(params: params).then((value) {
      if(value is DataSuccess<ClientAccessToken>){
        logger.d("User logged in.");
        if (context.mounted){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("User authenticated."),
        ));   
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => RoomsPage()));
      }
      }
      else{
        logger.e("Login error.");
      }
      return value;
    });
  }
}

final loginStateProvider = StateNotifierProvider<LoginStateNotifier, DataState<ClientAccessToken>>((ref) {
  // ignore: null_argument_to_non_null_type
  return LoginStateNotifier(ref.watch(loginProvider));
});