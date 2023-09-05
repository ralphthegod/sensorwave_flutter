// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_access_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientAccessToken _$$_ClientAccessTokenFromJson(Map<String, dynamic> json) =>
    _$_ClientAccessToken(
      accessToken: json['access_token'] as String,
      expiresIn: json['expires_in'] as int,
      refreshExpiresIn: json['refresh_expires_in'] as int,
      refreshToken: json['refresh_token'] as String,
      tokenType: json['token_type'] as String,
      notBeforePolicy: json['not_before_policy'] as int,
      sessionState: json['session_state'] as String,
      scope: json['scope'] as String,
    );

Map<String, dynamic> _$$_ClientAccessTokenToJson(
        _$_ClientAccessToken instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expires_in': instance.expiresIn,
      'refresh_expires_in': instance.refreshExpiresIn,
      'refresh_token': instance.refreshToken,
      'token_type': instance.tokenType,
      'not_before_policy': instance.notBeforePolicy,
      'session_state': instance.sessionState,
      'scope': instance.scope,
    };
