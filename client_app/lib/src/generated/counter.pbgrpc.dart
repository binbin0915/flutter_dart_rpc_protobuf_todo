///
//  Generated code. Do not modify.
//  source: counter.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'counter.pb.dart' as $0;
export 'counter.pb.dart';

class CounterClient extends $grpc.Client {
  static final _$getCount = $grpc.ClientMethod<$0.Empty, $0.Count>(
      '/counter.Counter/GetCount',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Count.fromBuffer(value));
  static final _$subscribeCount = $grpc.ClientMethod<$0.Empty, $0.Count>(
      '/counter.Counter/SubscribeCount',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Count.fromBuffer(value));
  static final _$incrementCount = $grpc.ClientMethod<$0.Count, $0.Empty>(
      '/counter.Counter/IncrementCount',
      ($0.Count value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  CounterClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.Count> getCount($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getCount, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.Count> subscribeCount($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$subscribeCount, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.Empty> incrementCount($0.Count request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$incrementCount, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class CounterServiceBase extends $grpc.Service {
  $core.String get $name => 'counter.Counter';

  CounterServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Count>(
        'GetCount',
        getCount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Count value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Count>(
        'SubscribeCount',
        subscribeCount_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Count value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Count, $0.Empty>(
        'IncrementCount',
        incrementCount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Count.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Count> getCount_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getCount(call, await request);
  }

  $async.Stream<$0.Count> subscribeCount_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* subscribeCount(call, await request);
  }

  $async.Future<$0.Empty> incrementCount_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Count> request) async {
    return incrementCount(call, await request);
  }

  $async.Future<$0.Count> getCount($grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$0.Count> subscribeCount(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> incrementCount(
      $grpc.ServiceCall call, $0.Count request);
}
