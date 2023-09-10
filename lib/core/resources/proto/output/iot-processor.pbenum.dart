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

class DataType extends $pb.ProtobufEnum {
  static const DataType TEMPERATURE = DataType._(0, _omitEnumNames ? '' : 'TEMPERATURE');
  static const DataType POSITION = DataType._(1, _omitEnumNames ? '' : 'POSITION');
  static const DataType HUMIDITY = DataType._(2, _omitEnumNames ? '' : 'HUMIDITY');
  static const DataType STATUS = DataType._(3, _omitEnumNames ? '' : 'STATUS');

  static const $core.List<DataType> values = <DataType> [
    TEMPERATURE,
    POSITION,
    HUMIDITY,
    STATUS,
  ];

  static final $core.Map<$core.int, DataType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DataType? valueOf($core.int value) => _byValue[value];

  const DataType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
