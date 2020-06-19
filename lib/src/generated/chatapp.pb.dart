///
//  Generated code. Do not modify.
//  source: chatapp.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class JoinUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JoinUser', package: const $pb.PackageName('chatapp'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..hasRequiredFields = false
  ;

  JoinUser._() : super();
  factory JoinUser() => create();
  factory JoinUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  JoinUser clone() => JoinUser()..mergeFromMessage(this);
  JoinUser copyWith(void Function(JoinUser) updates) => super.copyWith((message) => updates(message as JoinUser));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JoinUser create() => JoinUser._();
  JoinUser createEmptyInstance() => create();
  static $pb.PbList<JoinUser> createRepeated() => $pb.PbList<JoinUser>();
  @$core.pragma('dart2js:noInline')
  static JoinUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinUser>(create);
  static JoinUser _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class JoinResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JoinResponse', package: const $pb.PackageName('chatapp'), createEmptyInstance: create)
    ..aOS(1, 'response')
    ..hasRequiredFields = false
  ;

  JoinResponse._() : super();
  factory JoinResponse() => create();
  factory JoinResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  JoinResponse clone() => JoinResponse()..mergeFromMessage(this);
  JoinResponse copyWith(void Function(JoinResponse) updates) => super.copyWith((message) => updates(message as JoinResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JoinResponse create() => JoinResponse._();
  JoinResponse createEmptyInstance() => create();
  static $pb.PbList<JoinResponse> createRepeated() => $pb.PbList<JoinResponse>();
  @$core.pragma('dart2js:noInline')
  static JoinResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinResponse>(create);
  static JoinResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get response => $_getSZ(0);
  @$pb.TagNumber(1)
  set response($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);
}

class SendRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendRequest', package: const $pb.PackageName('chatapp'), createEmptyInstance: create)
    ..aOS(1, 'from')
    ..aOS(2, 'to')
    ..aOS(3, 'content')
    ..hasRequiredFields = false
  ;

  SendRequest._() : super();
  factory SendRequest() => create();
  factory SendRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendRequest clone() => SendRequest()..mergeFromMessage(this);
  SendRequest copyWith(void Function(SendRequest) updates) => super.copyWith((message) => updates(message as SendRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendRequest create() => SendRequest._();
  SendRequest createEmptyInstance() => create();
  static $pb.PbList<SendRequest> createRepeated() => $pb.PbList<SendRequest>();
  @$core.pragma('dart2js:noInline')
  static SendRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendRequest>(create);
  static SendRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get from => $_getSZ(0);
  @$pb.TagNumber(1)
  set from($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get to => $_getSZ(1);
  @$pb.TagNumber(2)
  set to($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTo() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);
}

class SendResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendResponse', package: const $pb.PackageName('chatapp'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'from')
    ..aOS(3, 'to')
    ..aOS(4, 'content')
    ..aOS(5, 'timestamp')
    ..hasRequiredFields = false
  ;

  SendResponse._() : super();
  factory SendResponse() => create();
  factory SendResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendResponse clone() => SendResponse()..mergeFromMessage(this);
  SendResponse copyWith(void Function(SendResponse) updates) => super.copyWith((message) => updates(message as SendResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendResponse create() => SendResponse._();
  SendResponse createEmptyInstance() => create();
  static $pb.PbList<SendResponse> createRepeated() => $pb.PbList<SendResponse>();
  @$core.pragma('dart2js:noInline')
  static SendResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendResponse>(create);
  static SendResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get from => $_getSZ(1);
  @$pb.TagNumber(2)
  set from($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get to => $_getSZ(2);
  @$pb.TagNumber(3)
  set to($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get timestamp => $_getSZ(4);
  @$pb.TagNumber(5)
  set timestamp($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestamp() => clearField(5);
}

class GetMessages extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetMessages', package: const $pb.PackageName('chatapp'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..hasRequiredFields = false
  ;

  GetMessages._() : super();
  factory GetMessages() => create();
  factory GetMessages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMessages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetMessages clone() => GetMessages()..mergeFromMessage(this);
  GetMessages copyWith(void Function(GetMessages) updates) => super.copyWith((message) => updates(message as GetMessages));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMessages create() => GetMessages._();
  GetMessages createEmptyInstance() => create();
  static $pb.PbList<GetMessages> createRepeated() => $pb.PbList<GetMessages>();
  @$core.pragma('dart2js:noInline')
  static GetMessages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMessages>(create);
  static GetMessages _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class Result extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Result', package: const $pb.PackageName('chatapp'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'from')
    ..aOS(3, 'to')
    ..aOS(4, 'content')
    ..aOS(5, 'timestamp')
    ..hasRequiredFields = false
  ;

  Result._() : super();
  factory Result() => create();
  factory Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Result clone() => Result()..mergeFromMessage(this);
  Result copyWith(void Function(Result) updates) => super.copyWith((message) => updates(message as Result));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Result create() => Result._();
  Result createEmptyInstance() => create();
  static $pb.PbList<Result> createRepeated() => $pb.PbList<Result>();
  @$core.pragma('dart2js:noInline')
  static Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Result>(create);
  static Result _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get from => $_getSZ(1);
  @$pb.TagNumber(2)
  set from($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get to => $_getSZ(2);
  @$pb.TagNumber(3)
  set to($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get timestamp => $_getSZ(4);
  @$pb.TagNumber(5)
  set timestamp($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestamp() => clearField(5);
}

class SendMessages extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendMessages', package: const $pb.PackageName('chatapp'), createEmptyInstance: create)
    ..pc<Result>(1, 'result', $pb.PbFieldType.PM, subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  SendMessages._() : super();
  factory SendMessages() => create();
  factory SendMessages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendMessages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendMessages clone() => SendMessages()..mergeFromMessage(this);
  SendMessages copyWith(void Function(SendMessages) updates) => super.copyWith((message) => updates(message as SendMessages));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendMessages create() => SendMessages._();
  SendMessages createEmptyInstance() => create();
  static $pb.PbList<SendMessages> createRepeated() => $pb.PbList<SendMessages>();
  @$core.pragma('dart2js:noInline')
  static SendMessages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendMessages>(create);
  static SendMessages _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Result> get result => $_getList(0);
}

class GetUsers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetUsers', package: const $pb.PackageName('chatapp'), createEmptyInstance: create)
    ..aOS(1, 'request')
    ..hasRequiredFields = false
  ;

  GetUsers._() : super();
  factory GetUsers() => create();
  factory GetUsers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUsers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetUsers clone() => GetUsers()..mergeFromMessage(this);
  GetUsers copyWith(void Function(GetUsers) updates) => super.copyWith((message) => updates(message as GetUsers));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUsers create() => GetUsers._();
  GetUsers createEmptyInstance() => create();
  static $pb.PbList<GetUsers> createRepeated() => $pb.PbList<GetUsers>();
  @$core.pragma('dart2js:noInline')
  static GetUsers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUsers>(create);
  static GetUsers _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get request => $_getSZ(0);
  @$pb.TagNumber(1)
  set request($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
}

class SendUsers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendUsers', package: const $pb.PackageName('chatapp'), createEmptyInstance: create)
    ..pPS(1, 'name')
    ..hasRequiredFields = false
  ;

  SendUsers._() : super();
  factory SendUsers() => create();
  factory SendUsers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendUsers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendUsers clone() => SendUsers()..mergeFromMessage(this);
  SendUsers copyWith(void Function(SendUsers) updates) => super.copyWith((message) => updates(message as SendUsers));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendUsers create() => SendUsers._();
  SendUsers createEmptyInstance() => create();
  static $pb.PbList<SendUsers> createRepeated() => $pb.PbList<SendUsers>();
  @$core.pragma('dart2js:noInline')
  static SendUsers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendUsers>(create);
  static SendUsers _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get name => $_getList(0);
}

