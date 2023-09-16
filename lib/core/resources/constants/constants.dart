
import 'package:logger/logger.dart';

const String apiBaseUrl = '';
const String contentTypeFormUrlEncoded = 'application/x-www-form-urlencoded';
const String contentTypeJson = 'application/json';

// Keycloak
const String keycloakSourceUrl = apiBaseUrl;
const String keycloakRealm = 'app';
const String keycloakApiBaseUrl = '$keycloakSourceUrl/realms/$keycloakRealm/protocol/openid-connect';

// Client
const String tokenClientId = 'ext-client';
const String tokenClientSecret = '';
const String tokenClientGrantType = 'password';

// Debug
const bool isProduction = false;

// MQTT
const String mqttServerAddress = '';
const int mqttServerPort = 18053;

// Logs
final logger = Logger();
