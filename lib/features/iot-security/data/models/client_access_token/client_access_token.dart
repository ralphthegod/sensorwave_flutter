// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'client_access_token.freezed.dart';
part 'client_access_token.g.dart';

@freezed
class ClientAccessToken with _$ClientAccessToken {
  const factory ClientAccessToken({
    required String access_token,
    required int expires_in,
    required int refresh_expires_in,
    required String refresh_token,
    required String token_type,
    required int not_before_policy,
    required String session_state,
    required String scope,
  }) = _ClientAccessToken;

  factory ClientAccessToken.fromJson(Map<String, Object?> json) => _$ClientAccessTokenFromJson(json);

}