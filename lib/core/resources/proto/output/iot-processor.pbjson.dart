//
//  Generated code. Do not modify.
//  source: iot-processor.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use dataTypeDescriptor instead')
const DataType$json = {
  '1': 'DataType',
  '2': [
    {'1': 'TEMPERATURE', '2': 0},
    {'1': 'POSITION', '2': 1},
    {'1': 'HUMIDITY', '2': 2},
    {'1': 'STATUS', '2': 3},
  ],
};

/// Descriptor for `DataType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dataTypeDescriptor = $convert.base64Decode(
    'CghEYXRhVHlwZRIPCgtURU1QRVJBVFVSRRAAEgwKCFBPU0lUSU9OEAESDAoISFVNSURJVFkQAh'
    'IKCgZTVEFUVVMQAw==');

@$core.Deprecated('Use smartObjectMessageDescriptor instead')
const SmartObjectMessage$json = {
  '1': 'SmartObjectMessage',
  '2': [
    {'1': 'smartObjectId', '3': 1, '4': 1, '5': 9, '10': 'smartObjectId'},
    {'1': 'roomId', '3': 2, '4': 1, '5': 9, '10': 'roomId'},
    {'1': 'timestamp', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'timestamp', '17': true},
    {'1': 'data', '3': 4, '4': 3, '5': 11, '6': '.Data', '10': 'data'},
  ],
  '8': [
    {'1': '_timestamp'},
  ],
};

/// Descriptor for `SmartObjectMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smartObjectMessageDescriptor = $convert.base64Decode(
    'ChJTbWFydE9iamVjdE1lc3NhZ2USJAoNc21hcnRPYmplY3RJZBgBIAEoCVINc21hcnRPYmplY3'
    'RJZBIWCgZyb29tSWQYAiABKAlSBnJvb21JZBI9Cgl0aW1lc3RhbXAYAyABKAsyGi5nb29nbGUu'
    'cHJvdG9idWYuVGltZXN0YW1wSABSCXRpbWVzdGFtcIgBARIZCgRkYXRhGAQgAygLMgUuRGF0YV'
    'IEZGF0YUIMCgpfdGltZXN0YW1w');

@$core.Deprecated('Use dataDescriptor instead')
const Data$json = {
  '1': 'Data',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.DataType', '10': 'type'},
    {'1': 'data', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'data'},
  ],
};

/// Descriptor for `Data`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataDescriptor = $convert.base64Decode(
    'CgREYXRhEh0KBHR5cGUYASABKA4yCS5EYXRhVHlwZVIEdHlwZRIoCgRkYXRhGAIgASgLMhQuZ2'
    '9vZ2xlLnByb3RvYnVmLkFueVIEZGF0YQ==');

@$core.Deprecated('Use temperatureDescriptor instead')
const Temperature$json = {
  '1': 'Temperature',
  '2': [
    {'1': 'temperature', '3': 1, '4': 1, '5': 1, '10': 'temperature'},
  ],
};

/// Descriptor for `Temperature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List temperatureDescriptor = $convert.base64Decode(
    'CgtUZW1wZXJhdHVyZRIgCgt0ZW1wZXJhdHVyZRgBIAEoAVILdGVtcGVyYXR1cmU=');

@$core.Deprecated('Use positionDescriptor instead')
const Position$json = {
  '1': 'Position',
  '2': [
    {'1': 'longitude', '3': 1, '4': 1, '5': 1, '10': 'longitude'},
    {'1': 'latitude', '3': 2, '4': 1, '5': 1, '10': 'latitude'},
  ],
};

/// Descriptor for `Position`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionDescriptor = $convert.base64Decode(
    'CghQb3NpdGlvbhIcCglsb25naXR1ZGUYASABKAFSCWxvbmdpdHVkZRIaCghsYXRpdHVkZRgCIA'
    'EoAVIIbGF0aXR1ZGU=');

@$core.Deprecated('Use humidityDescriptor instead')
const Humidity$json = {
  '1': 'Humidity',
  '2': [
    {'1': 'humidity', '3': 1, '4': 1, '5': 1, '10': 'humidity'},
  ],
};

/// Descriptor for `Humidity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List humidityDescriptor = $convert.base64Decode(
    'CghIdW1pZGl0eRIaCghodW1pZGl0eRgBIAEoAVIIaHVtaWRpdHk=');

@$core.Deprecated('Use statusDescriptor instead')
const Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'isOnline', '3': 1, '4': 1, '5': 8, '10': 'isOnline'},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode(
    'CgZTdGF0dXMSGgoIaXNPbmxpbmUYASABKAhSCGlzT25saW5l');

