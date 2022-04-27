///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'struct.pbenum.dart';

export 'struct.pbenum.dart';

class Struct_FieldsEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Struct_FieldsEntry')
    ..aOS(1, 'key')
    ..a<Value>(2, 'value', $pb.PbFieldType.OM, Value.getDefault, Value.create)
    ..hasRequiredFields = false
  ;

  Struct_FieldsEntry() : super();
  Struct_FieldsEntry.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Struct_FieldsEntry.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Struct_FieldsEntry clone() => new Struct_FieldsEntry()..mergeFromMessage(this);
  $pb.BuilderInfo get info_ => _i;
  static Struct_FieldsEntry create() => new Struct_FieldsEntry();
  static $pb.PbList<Struct_FieldsEntry> createRepeated() => new $pb.PbList<Struct_FieldsEntry>();
  static Struct_FieldsEntry getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyStruct_FieldsEntry();
    return _defaultInstance;
  }
  static Struct_FieldsEntry _defaultInstance;
  static void $checkItem(Struct_FieldsEntry v) {
    if (v is! Struct_FieldsEntry) $pb.checkItemFailed(v, 'Struct_FieldsEntry');
  }

  String get key => $_getS(0, '');
  set key(String v) { $_setString(0, v); }
  bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  Value get value => $_getN(1);
  set value(Value v) { setField(2, v); }
  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);
}

class _ReadonlyStruct_FieldsEntry extends Struct_FieldsEntry with $pb.ReadonlyMessageMixin {}

class Struct extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Struct')
    ..pp<Struct_FieldsEntry>(1, 'fields', $pb.PbFieldType.PM, Struct_FieldsEntry.$checkItem, Struct_FieldsEntry.create)
    ..hasRequiredFields = false
  ;

  Struct() : super();
  Struct.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Struct.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Struct clone() => new Struct()..mergeFromMessage(this);
  $pb.BuilderInfo get info_ => _i;
  static Struct create() => new Struct();
  static $pb.PbList<Struct> createRepeated() => new $pb.PbList<Struct>();
  static Struct getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyStruct();
    return _defaultInstance;
  }
  static Struct _defaultInstance;
  static void $checkItem(Struct v) {
    if (v is! Struct) $pb.checkItemFailed(v, 'Struct');
  }

  List<Struct_FieldsEntry> get fields => $_getList(0);
}

class _ReadonlyStruct extends Struct with $pb.ReadonlyMessageMixin {}

class Value extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Value')
    ..e<NullValue>(1, 'nullValue', $pb.PbFieldType.OE, NullValue.NULL_VALUE, NullValue.valueOf, NullValue.values)
    ..a<double>(2, 'numberValue', $pb.PbFieldType.OD)
    ..aOS(3, 'stringValue')
    ..aOB(4, 'boolValue')
    ..a<Struct>(5, 'structValue', $pb.PbFieldType.OM, Struct.getDefault, Struct.create)
    ..a<ListValue>(6, 'listValue', $pb.PbFieldType.OM, ListValue.getDefault, ListValue.create)
    ..hasRequiredFields = false
  ;

  Value() : super();
  Value.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Value.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Value clone() => new Value()..mergeFromMessage(this);
  $pb.BuilderInfo get info_ => _i;
  static Value create() => new Value();
  static $pb.PbList<Value> createRepeated() => new $pb.PbList<Value>();
  static Value getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyValue();
    return _defaultInstance;
  }
  static Value _defaultInstance;
  static void $checkItem(Value v) {
    if (v is! Value) $pb.checkItemFailed(v, 'Value');
  }

  NullValue get nullValue => $_getN(0);
  set nullValue(NullValue v) { setField(1, v); }
  bool hasNullValue() => $_has(0);
  void clearNullValue() => clearField(1);

  double get numberValue => $_getN(1);
  set numberValue(double v) { $_setDouble(1, v); }
  bool hasNumberValue() => $_has(1);
  void clearNumberValue() => clearField(2);

  String get stringValue => $_getS(2, '');
  set stringValue(String v) { $_setString(2, v); }
  bool hasStringValue() => $_has(2);
  void clearStringValue() => clearField(3);

  bool get boolValue => $_get(3, false);
  set boolValue(bool v) { $_setBool(3, v); }
  bool hasBoolValue() => $_has(3);
  void clearBoolValue() => clearField(4);

  Struct get structValue => $_getN(4);
  set structValue(Struct v) { setField(5, v); }
  bool hasStructValue() => $_has(4);
  void clearStructValue() => clearField(5);

  ListValue get listValue => $_getN(5);
  set listValue(ListValue v) { setField(6, v); }
  bool hasListValue() => $_has(5);
  void clearListValue() => clearField(6);
}

class _ReadonlyValue extends Value with $pb.ReadonlyMessageMixin {}

class ListValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListValue')
    ..pp<Value>(1, 'values', $pb.PbFieldType.PM, Value.$checkItem, Value.create)
    ..hasRequiredFields = false
  ;

  ListValue() : super();
  ListValue.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListValue.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListValue clone() => new ListValue()..mergeFromMessage(this);
  $pb.BuilderInfo get info_ => _i;
  static ListValue create() => new ListValue();
  static $pb.PbList<ListValue> createRepeated() => new $pb.PbList<ListValue>();
  static ListValue getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyListValue();
    return _defaultInstance;
  }
  static ListValue _defaultInstance;
  static void $checkItem(ListValue v) {
    if (v is! ListValue) $pb.checkItemFailed(v, 'ListValue');
  }

  List<Value> get values => $_getList(0);
}

class _ReadonlyListValue extends ListValue with $pb.ReadonlyMessageMixin {}

