import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/resources/data_state.dart';
import 'package:sensorwave/features/iot-security/domain/models/user/user.dart';
import 'package:sensorwave/features/iot-security/domain/providers/register_provider.dart';
import 'package:sensorwave/features/iot-security/domain/usecases/register.dart';

class RegisterStateNotifier extends StateNotifier<Future<DataState<User>>> {
  RegisterStateNotifier(super.state , this.usecase);
  final RegisterUseCase usecase;

  void fetch(Map<String,String> params) async {
    state = usecase.call(params: params);
  }
}

final registerStateProvider = StateNotifierProvider<RegisterStateNotifier, Future<DataState<User>>>((ref) {
  // ignore: null_argument_to_non_null_type
  return RegisterStateNotifier(ref.read(registerProvider).call(params: {"username":"", "password":""}), ref.watch(registerProvider));
});