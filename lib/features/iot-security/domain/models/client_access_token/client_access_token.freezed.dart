// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_access_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientAccessToken _$ClientAccessTokenFromJson(Map<String, dynamic> json) {
  return _ClientAccessToken.fromJson(json);
}

/// @nodoc
mixin _$ClientAccessToken {
  String get access_token => throw _privateConstructorUsedError;
  int get expires_in => throw _privateConstructorUsedError;
  int get refresh_expires_in => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;
  String get token_type => throw _privateConstructorUsedError;
  int get not_before_policy => throw _privateConstructorUsedError;
  String get session_state => throw _privateConstructorUsedError;
  String get scope => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientAccessTokenCopyWith<ClientAccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientAccessTokenCopyWith<$Res> {
  factory $ClientAccessTokenCopyWith(
          ClientAccessToken value, $Res Function(ClientAccessToken) then) =
      _$ClientAccessTokenCopyWithImpl<$Res, ClientAccessToken>;
  @useResult
  $Res call(
      {String access_token,
      int expires_in,
      int refresh_expires_in,
      String refresh_token,
      String token_type,
      int not_before_policy,
      String session_state,
      String scope});
}

/// @nodoc
class _$ClientAccessTokenCopyWithImpl<$Res, $Val extends ClientAccessToken>
    implements $ClientAccessTokenCopyWith<$Res> {
  _$ClientAccessTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? expires_in = null,
    Object? refresh_expires_in = null,
    Object? refresh_token = null,
    Object? token_type = null,
    Object? not_before_policy = null,
    Object? session_state = null,
    Object? scope = null,
  }) {
    return _then(_value.copyWith(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      expires_in: null == expires_in
          ? _value.expires_in
          : expires_in // ignore: cast_nullable_to_non_nullable
              as int,
      refresh_expires_in: null == refresh_expires_in
          ? _value.refresh_expires_in
          : refresh_expires_in // ignore: cast_nullable_to_non_nullable
              as int,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
      token_type: null == token_type
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String,
      not_before_policy: null == not_before_policy
          ? _value.not_before_policy
          : not_before_policy // ignore: cast_nullable_to_non_nullable
              as int,
      session_state: null == session_state
          ? _value.session_state
          : session_state // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientAccessTokenCopyWith<$Res>
    implements $ClientAccessTokenCopyWith<$Res> {
  factory _$$_ClientAccessTokenCopyWith(_$_ClientAccessToken value,
          $Res Function(_$_ClientAccessToken) then) =
      __$$_ClientAccessTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String access_token,
      int expires_in,
      int refresh_expires_in,
      String refresh_token,
      String token_type,
      int not_before_policy,
      String session_state,
      String scope});
}

/// @nodoc
class __$$_ClientAccessTokenCopyWithImpl<$Res>
    extends _$ClientAccessTokenCopyWithImpl<$Res, _$_ClientAccessToken>
    implements _$$_ClientAccessTokenCopyWith<$Res> {
  __$$_ClientAccessTokenCopyWithImpl(
      _$_ClientAccessToken _value, $Res Function(_$_ClientAccessToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? expires_in = null,
    Object? refresh_expires_in = null,
    Object? refresh_token = null,
    Object? token_type = null,
    Object? not_before_policy = null,
    Object? session_state = null,
    Object? scope = null,
  }) {
    return _then(_$_ClientAccessToken(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      expires_in: null == expires_in
          ? _value.expires_in
          : expires_in // ignore: cast_nullable_to_non_nullable
              as int,
      refresh_expires_in: null == refresh_expires_in
          ? _value.refresh_expires_in
          : refresh_expires_in // ignore: cast_nullable_to_non_nullable
              as int,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
      token_type: null == token_type
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String,
      not_before_policy: null == not_before_policy
          ? _value.not_before_policy
          : not_before_policy // ignore: cast_nullable_to_non_nullable
              as int,
      session_state: null == session_state
          ? _value.session_state
          : session_state // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientAccessToken
    with DiagnosticableTreeMixin
    implements _ClientAccessToken {
  const _$_ClientAccessToken(
      {required this.access_token,
      required this.expires_in,
      required this.refresh_expires_in,
      required this.refresh_token,
      required this.token_type,
      this.not_before_policy = 0,
      required this.session_state,
      required this.scope});

  factory _$_ClientAccessToken.fromJson(Map<String, dynamic> json) =>
      _$$_ClientAccessTokenFromJson(json);

  @override
  final String access_token;
  @override
  final int expires_in;
  @override
  final int refresh_expires_in;
  @override
  final String refresh_token;
  @override
  final String token_type;
  @override
  @JsonKey()
  final int not_before_policy;
  @override
  final String session_state;
  @override
  final String scope;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientAccessToken(access_token: $access_token, expires_in: $expires_in, refresh_expires_in: $refresh_expires_in, refresh_token: $refresh_token, token_type: $token_type, not_before_policy: $not_before_policy, session_state: $session_state, scope: $scope)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientAccessToken'))
      ..add(DiagnosticsProperty('access_token', access_token))
      ..add(DiagnosticsProperty('expires_in', expires_in))
      ..add(DiagnosticsProperty('refresh_expires_in', refresh_expires_in))
      ..add(DiagnosticsProperty('refresh_token', refresh_token))
      ..add(DiagnosticsProperty('token_type', token_type))
      ..add(DiagnosticsProperty('not_before_policy', not_before_policy))
      ..add(DiagnosticsProperty('session_state', session_state))
      ..add(DiagnosticsProperty('scope', scope));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientAccessToken &&
            (identical(other.access_token, access_token) ||
                other.access_token == access_token) &&
            (identical(other.expires_in, expires_in) ||
                other.expires_in == expires_in) &&
            (identical(other.refresh_expires_in, refresh_expires_in) ||
                other.refresh_expires_in == refresh_expires_in) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token) &&
            (identical(other.token_type, token_type) ||
                other.token_type == token_type) &&
            (identical(other.not_before_policy, not_before_policy) ||
                other.not_before_policy == not_before_policy) &&
            (identical(other.session_state, session_state) ||
                other.session_state == session_state) &&
            (identical(other.scope, scope) || other.scope == scope));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      access_token,
      expires_in,
      refresh_expires_in,
      refresh_token,
      token_type,
      not_before_policy,
      session_state,
      scope);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientAccessTokenCopyWith<_$_ClientAccessToken> get copyWith =>
      __$$_ClientAccessTokenCopyWithImpl<_$_ClientAccessToken>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientAccessTokenToJson(
      this,
    );
  }
}

abstract class _ClientAccessToken implements ClientAccessToken {
  const factory _ClientAccessToken(
      {required final String access_token,
      required final int expires_in,
      required final int refresh_expires_in,
      required final String refresh_token,
      required final String token_type,
      final int not_before_policy,
      required final String session_state,
      required final String scope}) = _$_ClientAccessToken;

  factory _ClientAccessToken.fromJson(Map<String, dynamic> json) =
      _$_ClientAccessToken.fromJson;

  @override
  String get access_token;
  @override
  int get expires_in;
  @override
  int get refresh_expires_in;
  @override
  String get refresh_token;
  @override
  String get token_type;
  @override
  int get not_before_policy;
  @override
  String get session_state;
  @override
  String get scope;
  @override
  @JsonKey(ignore: true)
  _$$_ClientAccessTokenCopyWith<_$_ClientAccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}
