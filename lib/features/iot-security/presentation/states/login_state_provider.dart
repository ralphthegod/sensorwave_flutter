import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-security/domain/models/client_access_token/client_access_token.dart';
import 'package:sensorwave/features/iot-security/domain/providers/login_provider.dart';
import 'package:sensorwave/features/iot-security/domain/usecases/login.dart';

class LoginStateNotifier extends StateNotifier<Future<DataState<ClientAccessToken>>> {
  LoginStateNotifier(super.state , this.usecase);
  final LoginUseCase usecase;

  void fetch(Map<String,String> params) async {
    state = usecase.call(params: params);
  }
}

final loginStateProvider = StateNotifierProvider<LoginStateNotifier, Future<DataState<ClientAccessToken>>>((ref) {
  // ignore: null_argument_to_non_null_type
  return LoginStateNotifier(Future<DataState<ClientAccessToken>>.value(null), ref.watch(loginProvider));
});