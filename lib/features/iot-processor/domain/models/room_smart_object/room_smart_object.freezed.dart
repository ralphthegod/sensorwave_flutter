// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_smart_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomSmartObject _$RoomSmartObjectFromJson(Map<String, dynamic> json) {
  return _RoomSmartObject.fromJson(json);
}

/// @nodoc
mixin _$RoomSmartObject {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get roomOwnerUsername => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomSmartObjectCopyWith<RoomSmartObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomSmartObjectCopyWith<$Res> {
  factory $RoomSmartObjectCopyWith(
          RoomSmartObject value, $Res Function(RoomSmartObject) then) =
      _$RoomSmartObjectCopyWithImpl<$Res, RoomSmartObject>;
  @useResult
  $Res call(
      {String id, String name, String roomOwnerUsername, DateTime createdAt});
}

/// @nodoc
class _$RoomSmartObjectCopyWithImpl<$Res, $Val extends RoomSmartObject>
    implements $RoomSmartObjectCopyWith<$Res> {
  _$RoomSmartObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? roomOwnerUsername = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      roomOwnerUsername: null == roomOwnerUsername
          ? _value.roomOwnerUsername
          : roomOwnerUsername // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomSmartObjectCopyWith<$Res>
    implements $RoomSmartObjectCopyWith<$Res> {
  factory _$$_RoomSmartObjectCopyWith(
          _$_RoomSmartObject value, $Res Function(_$_RoomSmartObject) then) =
      __$$_RoomSmartObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String roomOwnerUsername, DateTime createdAt});
}

/// @nodoc
class __$$_RoomSmartObjectCopyWithImpl<$Res>
    extends _$RoomSmartObjectCopyWithImpl<$Res, _$_RoomSmartObject>
    implements _$$_RoomSmartObjectCopyWith<$Res> {
  __$$_RoomSmartObjectCopyWithImpl(
      _$_RoomSmartObject _value, $Res Function(_$_RoomSmartObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? roomOwnerUsername = null,
    Object? createdAt = null,
  }) {
    return _then(_$_RoomSmartObject(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      roomOwnerUsername: null == roomOwnerUsername
          ? _value.roomOwnerUsername
          : roomOwnerUsername // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomSmartObject
    with DiagnosticableTreeMixin
    implements _RoomSmartObject {
  const _$_RoomSmartObject(
      {required this.id,
      required this.name,
      this.roomOwnerUsername = "",
      required this.createdAt});

  factory _$_RoomSmartObject.fromJson(Map<String, dynamic> json) =>
      _$$_RoomSmartObjectFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final String roomOwnerUsername;
  @override
  final DateTime createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoomSmartObject(id: $id, name: $name, roomOwnerUsername: $roomOwnerUsername, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoomSmartObject'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('roomOwnerUsername', roomOwnerUsername))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomSmartObject &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.roomOwnerUsername, roomOwnerUsername) ||
                other.roomOwnerUsername == roomOwnerUsername) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, roomOwnerUsername, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomSmartObjectCopyWith<_$_RoomSmartObject> get copyWith =>
      __$$_RoomSmartObjectCopyWithImpl<_$_RoomSmartObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomSmartObjectToJson(
      this,
    );
  }
}

abstract class _RoomSmartObject implements RoomSmartObject {
  const factory _RoomSmartObject(
      {required final String id,
      required final String name,
      final String roomOwnerUsername,
      required final DateTime createdAt}) = _$_RoomSmartObject;

  factory _RoomSmartObject.fromJson(Map<String, dynamic> json) =
      _$_RoomSmartObject.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get roomOwnerUsername;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_RoomSmartObjectCopyWith<_$_RoomSmartObject> get copyWith =>
      throw _privateConstructorUsedError;
}
