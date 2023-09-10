//
//  Generated code. Do not modify.
//  source: iot-processor.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'any.pb.dart' as $1;
import 'timestamp.pb.dart' as $0;
import 'iot-processor.pbenum.dart';

export 'iot-processor.pbenum.dart';

class SmartObjectMessage extends $pb.GeneratedMessage {
  factory SmartObjectMessage({
    $core.String? smartObjectId,
    $core.String? roomId,
    $0.Timestamp? timestamp,
    $core.Iterable<Data>? data,
  }) {
    final $result = create();
    if (smartObjectId != null) {
      $result.smartObjectId = smartObjectId;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  SmartObjectMessage._() : super();
  factory SmartObjectMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmartObjectMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SmartObjectMessage', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'smartObjectId', protoName: 'smartObjectId')
    ..aOS(2, _omitFieldNames ? '' : 'roomId', protoName: 'roomId')
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'timestamp', subBuilder: $0.Timestamp.create)
    ..pc<Data>(4, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: Data.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SmartObjectMessage clone() => SmartObjectMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SmartObjectMessage copyWith(void Function(SmartObjectMessage) updates) => super.copyWith((message) => updates(message as SmartObjectMessage)) as SmartObjectMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SmartObjectMessage create() => SmartObjectMessage._();
  SmartObjectMessage createEmptyInstance() => create();
  static $pb.PbList<SmartObjectMessage> createRepeated() => $pb.PbList<SmartObjectMessage>();
  @$core.pragma('dart2js:noInline')
  static SmartObjectMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmartObjectMessage>(create);
  static SmartObjectMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get smartObjectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set smartObjectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSmartObjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSmartObjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get roomId => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);

  @$pb.TagNumber(3)
  $0.Timestamp get timestamp => $_getN(2);
  @$pb.TagNumber(3)
  set timestamp($0.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureTimestamp() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<Data> get data => $_getList(3);
}

class Data extends $pb.GeneratedMessage {
  factory Data({
    DataType? type,
    $1.Any? data,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  Data._() : super();
  factory Data.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Data.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Data', createEmptyInstance: create)
    ..e<DataType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: DataType.TEMPERATURE, valueOf: DataType.valueOf, enumValues: DataType.values)
    ..aOM<$1.Any>(2, _omitFieldNames ? '' : 'data', subBuilder: $1.Any.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Data clone() => Data()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Data copyWith(void Function(Data) updates) => super.copyWith((message) => updates(message as Data)) as Data;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Data create() => Data._();
  Data createEmptyInstance() => create();
  static $pb.PbList<Data> createRepeated() => $pb.PbList<Data>();
  @$core.pragma('dart2js:noInline')
  static Data getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Data>(create);
  static Data? _defaultInstance;

  @$pb.TagNumber(1)
  DataType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(DataType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $1.Any get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($1.Any v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  $1.Any ensureData() => $_ensure(1);
}

class Temperature extends $pb.GeneratedMessage {
  factory Temperature({
    $core.double? temperature,
  }) {
    final $result = create();
    if (temperature != null) {
      $result.temperature = temperature;
    }
    return $result;
  }
  Temperature._() : super();
  factory Temperature.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Temperature.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Temperature', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'temperature', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Temperature clone() => Temperature()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Temperature copyWith(void Function(Temperature) updates) => super.copyWith((message) => updates(message as Temperature)) as Temperature;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Temperature create() => Temperature._();
  Temperature createEmptyInstance() => create();
  static $pb.PbList<Temperature> createRepeated() => $pb.PbList<Temperature>();
  @$core.pragma('dart2js:noInline')
  static Temperature getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Temperature>(create);
  static Temperature? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get temperature => $_getN(0);
  @$pb.TagNumber(1)
  set temperature($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTemperature() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemperature() => clearField(1);
}

class Position extends $pb.GeneratedMessage {
  factory Position({
    $core.double? longitude,
    $core.double? latitude,
  }) {
    final $result = create();
    if (longitude != null) {
      $result.longitude = longitude;
    }
    if (latitude != null) {
      $result.latitude = latitude;
    }
    return $result;
  }
  Position._() : super();
  factory Position.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Position.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Position', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'longitude', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'latitude', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Position clone() => Position()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Position copyWith(void Function(Position) updates) => super.copyWith((message) => updates(message as Position)) as Position;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Position create() => Position._();
  Position createEmptyInstance() => create();
  static $pb.PbList<Position> createRepeated() => $pb.PbList<Position>();
  @$core.pragma('dart2js:noInline')
  static Position getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Position>(create);
  static Position? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get longitude => $_getN(0);
  @$pb.TagNumber(1)
  set longitude($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLongitude() => $_has(0);
  @$pb.TagNumber(1)
  void clearLongitude() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get latitude => $_getN(1);
  @$pb.TagNumber(2)
  set latitude($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLatitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLatitude() => clearField(2);
}

class Humidity extends $pb.GeneratedMessage {
  factory Humidity({
    $core.double? humidity,
  }) {
    final $result = create();
    if (humidity != null) {
      $result.humidity = humidity;
    }
    return $result;
  }
  Humidity._() : super();
  factory Humidity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Humidity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Humidity', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'humidity', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Humidity clone() => Humidity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Humidity copyWith(void Function(Humidity) updates) => super.copyWith((message) => updates(message as Humidity)) as Humidity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Humidity create() => Humidity._();
  Humidity createEmptyInstance() => create();
  static $pb.PbList<Humidity> createRepeated() => $pb.PbList<Humidity>();
  @$core.pragma('dart2js:noInline')
  static Humidity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Humidity>(create);
  static Humidity? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get humidity => $_getN(0);
  @$pb.TagNumber(1)
  set humidity($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHumidity() => $_has(0);
  @$pb.TagNumber(1)
  void clearHumidity() => clearField(1);
}

class Status extends $pb.GeneratedMessage {
  factory Status({
    $core.bool? isOnline,
  }) {
    final $result = create();
    if (isOnline != null) {
      $result.isOnline = isOnline;
    }
    return $result;
  }
  Status._() : super();
  factory Status.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Status.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Status', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isOnline', protoName: 'isOnline')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Status clone() => Status()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Status copyWith(void Function(Status) updates) => super.copyWith((message) => updates(message as Status)) as Status;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Status create() => Status._();
  Status createEmptyInstance() => create();
  static $pb.PbList<Status> createRepeated() => $pb.PbList<Status>();
  @$core.pragma('dart2js:noInline')
  static Status getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Status>(create);
  static Status? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isOnline => $_getBF(0);
  @$pb.TagNumber(1)
  set isOnline($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsOnline() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsOnline() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
