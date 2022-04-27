///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use todoItemDescriptor instead')
const TodoItem$json = const {
  '1': 'TodoItem',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `TodoItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoItemDescriptor = $convert.base64Decode('CghUb2RvSXRlbRIOCgJpZBgBIAEoBVICaWQSEgoEdGV4dBgCIAEoCVIEdGV4dA==');
@$core.Deprecated('Use todoItemsDescriptor instead')
const TodoItems$json = const {
  '1': 'TodoItems',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.todoPackage.TodoItem', '10': 'items'},
  ],
};

/// Descriptor for `TodoItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoItemsDescriptor = $convert.base64Decode('CglUb2RvSXRlbXMSKwoFaXRlbXMYASADKAsyFS50b2RvUGFja2FnZS5Ub2RvSXRlbVIFaXRlbXM=');
@$core.Deprecated('Use voidNoParamDescriptor instead')
const voidNoParam$json = const {
  '1': 'voidNoParam',
};

/// Descriptor for `voidNoParam`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List voidNoParamDescriptor = $convert.base64Decode('Cgt2b2lkTm9QYXJhbQ==');
