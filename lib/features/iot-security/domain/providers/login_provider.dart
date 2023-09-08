import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/features/iot-security/data/iot-security_api_service_data_provider.dart';
import 'package:sensorwave/features/iot-security/domain/events/login_observer.dart';
import 'package:sensorwave/features/iot-security/domain/usecases/login.dart';

// [LoginUseCase] provider.
// Domain layer.

final LoginObserver loginObserver = LoginObserver(); // Observer for the login use case.

final loginProvider = Provider<LoginUseCase>((ref) => LoginUseCase(ref.watch(authRepositoryProvider), [loginObserver]));