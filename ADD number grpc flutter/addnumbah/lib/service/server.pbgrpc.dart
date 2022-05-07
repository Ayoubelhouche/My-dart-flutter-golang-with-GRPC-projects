///
//  Generated code. Do not modify.
//  source: server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'server.pb.dart' as $0;
export 'server.pb.dart';

class AddServiceClient extends $grpc.Client {
  static final _$add = $grpc.ClientMethod<$0.Request, $0.Response>(
      '/proto.AddService/add',
      ($0.Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Response.fromBuffer(value));

  AddServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Response> add($0.Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$add, request, options: options);
  }
}

abstract class AddServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.AddService';

  AddServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Request, $0.Response>(
        'add',
        add_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Request.fromBuffer(value),
        ($0.Response value) => value.writeToBuffer()));
  }

  $async.Future<$0.Response> add_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Request> request) async {
    return add(call, await request);
  }

  $async.Future<$0.Response> add($grpc.ServiceCall call, $0.Request request);
}
