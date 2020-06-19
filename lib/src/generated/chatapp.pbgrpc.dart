///
//  Generated code. Do not modify.
//  source: chatapp.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'chatapp.pb.dart' as $0;
export 'chatapp.pb.dart';

class ChatAppClient extends $grpc.Client {
  static final _$join = $grpc.ClientMethod<$0.JoinUser, $0.JoinResponse>(
      '/chatapp.ChatApp/Join',
      ($0.JoinUser value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.JoinResponse.fromBuffer(value));
  static final _$message = $grpc.ClientMethod<$0.SendRequest, $0.SendResponse>(
      '/chatapp.ChatApp/Message',
      ($0.SendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SendResponse.fromBuffer(value));
  static final _$userMessage =
      $grpc.ClientMethod<$0.GetMessages, $0.SendMessages>(
          '/chatapp.ChatApp/UserMessage',
          ($0.GetMessages value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SendMessages.fromBuffer(value));
  static final _$users = $grpc.ClientMethod<$0.GetUsers, $0.SendUsers>(
      '/chatapp.ChatApp/Users',
      ($0.GetUsers value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SendUsers.fromBuffer(value));

  ChatAppClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.JoinResponse> join($0.JoinUser request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$join, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SendResponse> message($0.SendRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$message, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SendMessages> userMessage($0.GetMessages request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$userMessage, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SendUsers> users($0.GetUsers request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$users, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ChatAppServiceBase extends $grpc.Service {
  $core.String get $name => 'chatapp.ChatApp';

  ChatAppServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.JoinUser, $0.JoinResponse>(
        'Join',
        join_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.JoinUser.fromBuffer(value),
        ($0.JoinResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendRequest, $0.SendResponse>(
        'Message',
        message_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendRequest.fromBuffer(value),
        ($0.SendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMessages, $0.SendMessages>(
        'UserMessage',
        userMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMessages.fromBuffer(value),
        ($0.SendMessages value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetUsers, $0.SendUsers>(
        'Users',
        users_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetUsers.fromBuffer(value),
        ($0.SendUsers value) => value.writeToBuffer()));
  }

  $async.Future<$0.JoinResponse> join_Pre(
      $grpc.ServiceCall call, $async.Future<$0.JoinUser> request) async {
    return join(call, await request);
  }

  $async.Future<$0.SendResponse> message_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SendRequest> request) async {
    return message(call, await request);
  }

  $async.Future<$0.SendMessages> userMessage_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetMessages> request) async {
    return userMessage(call, await request);
  }

  $async.Future<$0.SendUsers> users_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetUsers> request) async {
    return users(call, await request);
  }

  $async.Future<$0.JoinResponse> join(
      $grpc.ServiceCall call, $0.JoinUser request);
  $async.Future<$0.SendResponse> message(
      $grpc.ServiceCall call, $0.SendRequest request);
  $async.Future<$0.SendMessages> userMessage(
      $grpc.ServiceCall call, $0.GetMessages request);
  $async.Future<$0.SendUsers> users(
      $grpc.ServiceCall call, $0.GetUsers request);
}
