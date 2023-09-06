const String apiBaseUrl = '';

// Keycloak
const String keycloakSourceUrl = 'http://{{keycloak-host}}';
const String keycloakRealm = 'master';
const String keycloakApiBaseUrl = '$keycloakSourceUrl/realms/$keycloakRealm/protocol/openid-connect';

// Client
const String tokenClientId = '';
const String tokenClientSecret = '';
const String tokenClientGrantType = 'password';