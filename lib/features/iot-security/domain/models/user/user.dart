import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  
  const factory User({
    @Default("") String username,
    // ignore: invalid_annotation_target
    @Default("") String password,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

}