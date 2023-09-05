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
  String get accessToken => throw _privateConstructorUsedError;
  int get expiresIn => throw _privateConstructorUsedError;
  int get refreshExpiresIn => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;
  int get notBeforePolicy => throw _privateConstructorUsedError;
  String get sessionState => throw _privateConstructorUsedError;
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
      {String accessToken,
      int expiresIn,
      int refreshExpiresIn,
      String refreshToken,
      String tokenType,
      int notBeforePolicy,
      String sessionState,
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
    Object? accessToken = null,
    Object? expiresIn = null,
    Object? refreshExpiresIn = null,
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? notBeforePolicy = null,
    Object? sessionState = null,
    Object? scope = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshExpiresIn: null == refreshExpiresIn
          ? _value.refreshExpiresIn
          : refreshExpiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      notBeforePolicy: null == notBeforePolicy
          ? _value.notBeforePolicy
          : notBeforePolicy // ignore: cast_nullable_to_non_nullable
              as int,
      sessionState: null == sessionState
          ? _value.sessionState
          : sessionState // ignore: cast_nullable_to_non_nullable
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
      {String accessToken,
      int expiresIn,
      int refreshExpiresIn,
      String refreshToken,
      String tokenType,
      int notBeforePolicy,
      String sessionState,
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
    Object? accessToken = null,
    Object? expiresIn = null,
    Object? refreshExpiresIn = null,
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? notBeforePolicy = null,
    Object? sessionState = null,
    Object? scope = null,
  }) {
    return _then(_$_ClientAccessToken(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshExpiresIn: null == refreshExpiresIn
          ? _value.refreshExpiresIn
          : refreshExpiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      notBeforePolicy: null == notBeforePolicy
          ? _value.notBeforePolicy
          : notBeforePolicy // ignore: cast_nullable_to_non_nullable
              as int,
      sessionState: null == sessionState
          ? _value.sessionState
          : sessionState // ignore: cast_nullable_to_non_nullable
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
      {required this.accessToken,
      required this.expiresIn,
      required this.refreshExpiresIn,
      required this.refreshToken,
      required this.tokenType,
      required this.notBeforePolicy,
      required this.sessionState,
      required this.scope});

  factory _$_ClientAccessToken.fromJson(Map<String, dynamic> json) =>
      _$$_ClientAccessTokenFromJson(json);

  @override
  final String accessToken;
  @override
  final int expiresIn;
  @override
  final int refreshExpiresIn;
  @override
  final String refreshToken;
  @override
  final String tokenType;
  @override
  final int notBeforePolicy;
  @override
  final String sessionState;
  @override
  final String scope;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientAccessToken(accessToken: $accessToken, expiresIn: $expiresIn, refreshExpiresIn: $refreshExpiresIn, refreshToken: $refreshToken, tokenType: $tokenType, notBeforePolicy: $notBeforePolicy, sessionState: $sessionState, scope: $scope)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientAccessToken'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('expiresIn', expiresIn))
      ..add(DiagnosticsProperty('refreshExpiresIn', refreshExpiresIn))
      ..add(DiagnosticsProperty('refreshToken', refreshToken))
      ..add(DiagnosticsProperty('tokenType', tokenType))
      ..add(DiagnosticsProperty('notBeforePolicy', notBeforePolicy))
      ..add(DiagnosticsProperty('sessionState', sessionState))
      ..add(DiagnosticsProperty('scope', scope));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientAccessToken &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.refreshExpiresIn, refreshExpiresIn) ||
                other.refreshExpiresIn == refreshExpiresIn) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.notBeforePolicy, notBeforePolicy) ||
                other.notBeforePolicy == notBeforePolicy) &&
            (identical(other.sessionState, sessionState) ||
                other.sessionState == sessionState) &&
            (identical(other.scope, scope) || other.scope == scope));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accessToken,
      expiresIn,
      refreshExpiresIn,
      refreshToken,
      tokenType,
      notBeforePolicy,
      sessionState,
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
      {required final String accessToken,
      required final int expiresIn,
      required final int refreshExpiresIn,
      required final String refreshToken,
      required final String tokenType,
      required final int notBeforePolicy,
      required final String sessionState,
      required final String scope}) = _$_ClientAccessToken;

  factory _ClientAccessToken.fromJson(Map<String, dynamic> json) =
      _$_ClientAccessToken.fromJson;

  @override
  String get accessToken;
  @override
  int get expiresIn;
  @override
  int get refreshExpiresIn;
  @override
  String get refreshToken;
  @override
  String get tokenType;
  @override
  int get notBeforePolicy;
  @override
  String get sessionState;
  @override
  String get scope;
  @override
  @JsonKey(ignore: true)
  _$$_ClientAccessTokenCopyWith<_$_ClientAccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}
