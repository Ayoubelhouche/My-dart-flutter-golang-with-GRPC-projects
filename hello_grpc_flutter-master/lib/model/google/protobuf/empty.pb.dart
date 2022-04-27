///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show List, String, UnimplementedError, bool, double, int, override;

import 'package:protobuf/protobuf.dart' as $pb;

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Empty')
    ..hasRequiredFields = false
  ;

  Empty() : super();
  Empty.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Empty.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Empty clone() => new Empty()..mergeFromMessage(this);
  $pb.BuilderInfo get info_ => _i;
  static Empty create() => new Empty();
  static $pb.PbList<Empty> createRepeated() => new $pb.PbList<Empty>();
  static Empty getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyEmpty();
    return _defaultInstance;
  }
  static Empty _defaultInstance;
  static void $checkItem(Empty v) {
    if (v is! Empty) $pb.checkItemFailed(v, 'Empty');
  }

  @override
  $pb.GeneratedMessage createEmptyInstance() {
    // TODO: implement createEmptyInstance
    throw UnimplementedError();
  }
}

class _ReadonlyEmpty extends Empty with $pb.ReadonlyMessageMixin {
  @override
  $pb.GeneratedMessage createEmptyInstance() {
    // TODO: implement createEmptyInstance
    throw UnimplementedError();
  }
}

