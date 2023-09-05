import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'client_access_token.freezed.dart';
part 'client_access_token.g.dart';

@freezed
class ClientAccessToken with _$ClientAccessToken {
  const factory ClientAccessToken({
    required String accessToken,
    required int expiresIn,
    required int refreshExpiresIn,
    required String refreshToken,
    required String tokenType,
    required int notBeforePolicy,
    required String sessionState,
    required String scope,
  }) = _ClientAccessToken;

  factory ClientAccessToken.fromJson(Map<String, Object?> json) => _$ClientAccessTokenFromJson(json);

}