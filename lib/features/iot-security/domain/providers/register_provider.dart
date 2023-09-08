import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/features/iot-security/data/iot-security_api_service_data_provider.dart';
import 'package:sensorwave/features/iot-security/domain/usecases/register.dart';

// [RegisternUseCase] provider.
// Domain layer.

final registerProvider = Provider<RegisterUseCase>((ref) => RegisterUseCase(ref.watch(authRepositoryProvider)));