///
//  Generated code. Do not modify.
//  source: step.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'step.pb.dart' as $0;
export 'step.pb.dart';

class StepClient extends $grpc.Client {
  static final _$sayHello = $grpc.ClientMethod<$0.StepRequest, $0.StepReply>(
      '/betterstep.Step/SayHello',
      ($0.StepRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StepReply.fromBuffer(value));

  StepClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.StepReply> sayHello($0.StepRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sayHello, request, options: options);
  }
}

abstract class StepServiceBase extends $grpc.Service {
  $core.String get $name => 'betterstep.Step';

  StepServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.StepRequest, $0.StepReply>(
        'SayHello',
        sayHello_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StepRequest.fromBuffer(value),
        ($0.StepReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.StepReply> sayHello_Pre(
      $grpc.ServiceCall call, $async.Future<$0.StepRequest> request) async {
    return sayHello(call, await request);
  }

  $async.Future<$0.StepReply> sayHello(
      $grpc.ServiceCall call, $0.StepRequest request);
}
