
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/core/provider/service_provider.dart';
import 'package:sensorwave/core/resources/constants/constants.dart';
import 'package:sensorwave/features/iot-security/data/data_sources/register_api_service.dart';
import 'package:sensorwave/features/iot-security/data/data_sources/token_api_service.dart';
import 'package:sensorwave/features/iot-security/data/repository/auth_repository_impl.dart';
import 'package:sensorwave/features/iot-security/domain/repository/auth_repository.dart';

/// [AuthRepository] provider.
/// This provider uses [_authApiServiceProvider] and [_tokenApiServiceProvider] to create a new repo [AuthRepositoryImpl] provider instance.
/// Data layer.

final _authApiServiceProvider = Provider<AuthApiService>((ref) => AuthApiService(dioProvider(apiBaseUrl)));
final _tokenApiServiceProvider = Provider<TokenApiService>((ref) => TokenApiService(dioProvider(keycloakApiBaseUrl)));

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepositoryImpl(
    ref.watch(_authApiServiceProvider),
    ref.watch(_tokenApiServiceProvider),
  ),
);