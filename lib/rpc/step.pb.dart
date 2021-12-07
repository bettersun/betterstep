///
//  Generated code. Do not modify.
//  source: step.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Option extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Option', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'betterstep'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RootPath', protoName: 'RootPath')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SearchSubPath', protoName: 'SearchSubPath')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MatchCase', protoName: 'MatchCase')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileNamePart', protoName: 'FileNamePart')
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileType', protoName: 'FileType')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Pattern', protoName: 'Pattern')
    ..pPS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IgnorePath', protoName: 'IgnorePath')
    ..pPS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IgnoreFileNamePart', protoName: 'IgnoreFileNamePart')
    ..pPS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IgnoreType', protoName: 'IgnoreType')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IgnorePattern', protoName: 'IgnorePattern')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ShowDetail', protoName: 'ShowDetail')
    ..hasRequiredFields = false
  ;

  Option._() : super();
  factory Option({
    $core.Iterable<$core.String>? rootPath,
    $core.bool? searchSubPath,
    $core.bool? matchCase,
    $core.Iterable<$core.String>? fileNamePart,
    $core.Iterable<$core.String>? fileType,
    $core.String? pattern,
    $core.Iterable<$core.String>? ignorePath,
    $core.Iterable<$core.String>? ignoreFileNamePart,
    $core.Iterable<$core.String>? ignoreType,
    $core.String? ignorePattern,
    $core.bool? showDetail,
  }) {
    final _result = create();
    if (rootPath != null) {
      _result.rootPath.addAll(rootPath);
    }
    if (searchSubPath != null) {
      _result.searchSubPath = searchSubPath;
    }
    if (matchCase != null) {
      _result.matchCase = matchCase;
    }
    if (fileNamePart != null) {
      _result.fileNamePart.addAll(fileNamePart);
    }
    if (fileType != null) {
      _result.fileType.addAll(fileType);
    }
    if (pattern != null) {
      _result.pattern = pattern;
    }
    if (ignorePath != null) {
      _result.ignorePath.addAll(ignorePath);
    }
    if (ignoreFileNamePart != null) {
      _result.ignoreFileNamePart.addAll(ignoreFileNamePart);
    }
    if (ignoreType != null) {
      _result.ignoreType.addAll(ignoreType);
    }
    if (ignorePattern != null) {
      _result.ignorePattern = ignorePattern;
    }
    if (showDetail != null) {
      _result.showDetail = showDetail;
    }
    return _result;
  }
  factory Option.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Option.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Option clone() => Option()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Option copyWith(void Function(Option) updates) => super.copyWith((message) => updates(message as Option)) as Option; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Option create() => Option._();
  Option createEmptyInstance() => create();
  static $pb.PbList<Option> createRepeated() => $pb.PbList<Option>();
  @$core.pragma('dart2js:noInline')
  static Option getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Option>(create);
  static Option? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get rootPath => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get searchSubPath => $_getBF(1);
  @$pb.TagNumber(2)
  set searchSubPath($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSearchSubPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearSearchSubPath() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get matchCase => $_getBF(2);
  @$pb.TagNumber(3)
  set matchCase($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMatchCase() => $_has(2);
  @$pb.TagNumber(3)
  void clearMatchCase() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get fileNamePart => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get fileType => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get pattern => $_getSZ(5);
  @$pb.TagNumber(6)
  set pattern($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPattern() => $_has(5);
  @$pb.TagNumber(6)
  void clearPattern() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get ignorePath => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$core.String> get ignoreFileNamePart => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<$core.String> get ignoreType => $_getList(8);

  @$pb.TagNumber(10)
  $core.String get ignorePattern => $_getSZ(9);
  @$pb.TagNumber(10)
  set ignorePattern($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasIgnorePattern() => $_has(9);
  @$pb.TagNumber(10)
  void clearIgnorePattern() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get showDetail => $_getBF(10);
  @$pb.TagNumber(11)
  set showDetail($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasShowDetail() => $_has(10);
  @$pb.TagNumber(11)
  void clearShowDetail() => clearField(11);
}

class StepInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StepInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'betterstep'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CommentRuleDefined', protoName: 'CommentRuleDefined')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'File', protoName: 'File')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileName', protoName: 'FileName')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TotalStep', $pb.PbFieldType.O3, protoName: 'TotalStep')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'EmptyLineStep', $pb.PbFieldType.O3, protoName: 'EmptyLineStep')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CommentStep', $pb.PbFieldType.O3, protoName: 'CommentStep')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SourceStep', $pb.PbFieldType.O3, protoName: 'SourceStep')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ValidStep', $pb.PbFieldType.O3, protoName: 'ValidStep')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ExInfo', protoName: 'ExInfo')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Counted', protoName: 'Counted')
    ..hasRequiredFields = false
  ;

  StepInfo._() : super();
  factory StepInfo({
    $core.bool? commentRuleDefined,
    $core.String? file,
    $core.String? fileName,
    $core.int? totalStep,
    $core.int? emptyLineStep,
    $core.int? commentStep,
    $core.int? sourceStep,
    $core.int? validStep,
    $core.String? exInfo,
    $core.bool? counted,
  }) {
    final _result = create();
    if (commentRuleDefined != null) {
      _result.commentRuleDefined = commentRuleDefined;
    }
    if (file != null) {
      _result.file = file;
    }
    if (fileName != null) {
      _result.fileName = fileName;
    }
    if (totalStep != null) {
      _result.totalStep = totalStep;
    }
    if (emptyLineStep != null) {
      _result.emptyLineStep = emptyLineStep;
    }
    if (commentStep != null) {
      _result.commentStep = commentStep;
    }
    if (sourceStep != null) {
      _result.sourceStep = sourceStep;
    }
    if (validStep != null) {
      _result.validStep = validStep;
    }
    if (exInfo != null) {
      _result.exInfo = exInfo;
    }
    if (counted != null) {
      _result.counted = counted;
    }
    return _result;
  }
  factory StepInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StepInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StepInfo clone() => StepInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StepInfo copyWith(void Function(StepInfo) updates) => super.copyWith((message) => updates(message as StepInfo)) as StepInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StepInfo create() => StepInfo._();
  StepInfo createEmptyInstance() => create();
  static $pb.PbList<StepInfo> createRepeated() => $pb.PbList<StepInfo>();
  @$core.pragma('dart2js:noInline')
  static StepInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StepInfo>(create);
  static StepInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get commentRuleDefined => $_getBF(0);
  @$pb.TagNumber(1)
  set commentRuleDefined($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommentRuleDefined() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommentRuleDefined() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get file => $_getSZ(1);
  @$pb.TagNumber(2)
  set file($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFile() => $_has(1);
  @$pb.TagNumber(2)
  void clearFile() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get fileName => $_getSZ(2);
  @$pb.TagNumber(3)
  set fileName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFileName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get totalStep => $_getIZ(3);
  @$pb.TagNumber(4)
  set totalStep($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalStep() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalStep() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get emptyLineStep => $_getIZ(4);
  @$pb.TagNumber(5)
  set emptyLineStep($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEmptyLineStep() => $_has(4);
  @$pb.TagNumber(5)
  void clearEmptyLineStep() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get commentStep => $_getIZ(5);
  @$pb.TagNumber(6)
  set commentStep($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCommentStep() => $_has(5);
  @$pb.TagNumber(6)
  void clearCommentStep() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get sourceStep => $_getIZ(6);
  @$pb.TagNumber(7)
  set sourceStep($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSourceStep() => $_has(6);
  @$pb.TagNumber(7)
  void clearSourceStep() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get validStep => $_getIZ(7);
  @$pb.TagNumber(8)
  set validStep($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasValidStep() => $_has(7);
  @$pb.TagNumber(8)
  void clearValidStep() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get exInfo => $_getSZ(8);
  @$pb.TagNumber(9)
  set exInfo($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasExInfo() => $_has(8);
  @$pb.TagNumber(9)
  void clearExInfo() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get counted => $_getBF(9);
  @$pb.TagNumber(10)
  set counted($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCounted() => $_has(9);
  @$pb.TagNumber(10)
  void clearCounted() => clearField(10);
}

class StepSummary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StepSummary', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'betterstep'), createEmptyInstance: create)
    ..pc<StepInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Info', $pb.PbFieldType.PM, protoName: 'Info', subBuilder: StepInfo.create)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FlatFile', protoName: 'FlatFile')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnCountedFile', protoName: 'UnCountedFile')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FileCount', $pb.PbFieldType.O3, protoName: 'FileCount')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TotalStep', $pb.PbFieldType.O3, protoName: 'TotalStep')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'EmptyLineStep', $pb.PbFieldType.O3, protoName: 'EmptyLineStep')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CommentStep', $pb.PbFieldType.O3, protoName: 'CommentStep')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SourceStep', $pb.PbFieldType.O3, protoName: 'SourceStep')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ValidStep', $pb.PbFieldType.O3, protoName: 'ValidStep')
    ..hasRequiredFields = false
  ;

  StepSummary._() : super();
  factory StepSummary({
    $core.Iterable<StepInfo>? info,
    $core.Iterable<$core.String>? flatFile,
    $core.Iterable<$core.String>? unCountedFile,
    $core.int? fileCount,
    $core.int? totalStep,
    $core.int? emptyLineStep,
    $core.int? commentStep,
    $core.int? sourceStep,
    $core.int? validStep,
  }) {
    final _result = create();
    if (info != null) {
      _result.info.addAll(info);
    }
    if (flatFile != null) {
      _result.flatFile.addAll(flatFile);
    }
    if (unCountedFile != null) {
      _result.unCountedFile.addAll(unCountedFile);
    }
    if (fileCount != null) {
      _result.fileCount = fileCount;
    }
    if (totalStep != null) {
      _result.totalStep = totalStep;
    }
    if (emptyLineStep != null) {
      _result.emptyLineStep = emptyLineStep;
    }
    if (commentStep != null) {
      _result.commentStep = commentStep;
    }
    if (sourceStep != null) {
      _result.sourceStep = sourceStep;
    }
    if (validStep != null) {
      _result.validStep = validStep;
    }
    return _result;
  }
  factory StepSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StepSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StepSummary clone() => StepSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StepSummary copyWith(void Function(StepSummary) updates) => super.copyWith((message) => updates(message as StepSummary)) as StepSummary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StepSummary create() => StepSummary._();
  StepSummary createEmptyInstance() => create();
  static $pb.PbList<StepSummary> createRepeated() => $pb.PbList<StepSummary>();
  @$core.pragma('dart2js:noInline')
  static StepSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StepSummary>(create);
  static StepSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<StepInfo> get info => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get flatFile => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get unCountedFile => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get fileCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set fileCount($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFileCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearFileCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get totalStep => $_getIZ(4);
  @$pb.TagNumber(5)
  set totalStep($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalStep() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalStep() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get emptyLineStep => $_getIZ(5);
  @$pb.TagNumber(6)
  set emptyLineStep($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEmptyLineStep() => $_has(5);
  @$pb.TagNumber(6)
  void clearEmptyLineStep() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get commentStep => $_getIZ(6);
  @$pb.TagNumber(7)
  set commentStep($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCommentStep() => $_has(6);
  @$pb.TagNumber(7)
  void clearCommentStep() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get sourceStep => $_getIZ(7);
  @$pb.TagNumber(8)
  set sourceStep($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSourceStep() => $_has(7);
  @$pb.TagNumber(8)
  void clearSourceStep() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get validStep => $_getIZ(8);
  @$pb.TagNumber(9)
  set validStep($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasValidStep() => $_has(8);
  @$pb.TagNumber(9)
  void clearValidStep() => clearField(9);
}

class StepRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StepRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'betterstep'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<Option>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'option', subBuilder: Option.create)
    ..hasRequiredFields = false
  ;

  StepRequest._() : super();
  factory StepRequest({
    $core.String? name,
    Option? option,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (option != null) {
      _result.option = option;
    }
    return _result;
  }
  factory StepRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StepRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StepRequest clone() => StepRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StepRequest copyWith(void Function(StepRequest) updates) => super.copyWith((message) => updates(message as StepRequest)) as StepRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StepRequest create() => StepRequest._();
  StepRequest createEmptyInstance() => create();
  static $pb.PbList<StepRequest> createRepeated() => $pb.PbList<StepRequest>();
  @$core.pragma('dart2js:noInline')
  static StepRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StepRequest>(create);
  static StepRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  Option get option => $_getN(1);
  @$pb.TagNumber(2)
  set option(Option v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOption() => $_has(1);
  @$pb.TagNumber(2)
  void clearOption() => clearField(2);
  @$pb.TagNumber(2)
  Option ensureOption() => $_ensure(1);
}

class StepReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StepReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'betterstep'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOM<StepSummary>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summary', subBuilder: StepSummary.create)
    ..hasRequiredFields = false
  ;

  StepReply._() : super();
  factory StepReply({
    $core.String? message,
    StepSummary? summary,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    if (summary != null) {
      _result.summary = summary;
    }
    return _result;
  }
  factory StepReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StepReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StepReply clone() => StepReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StepReply copyWith(void Function(StepReply) updates) => super.copyWith((message) => updates(message as StepReply)) as StepReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StepReply create() => StepReply._();
  StepReply createEmptyInstance() => create();
  static $pb.PbList<StepReply> createRepeated() => $pb.PbList<StepReply>();
  @$core.pragma('dart2js:noInline')
  static StepReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StepReply>(create);
  static StepReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  StepSummary get summary => $_getN(1);
  @$pb.TagNumber(2)
  set summary(StepSummary v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearSummary() => clearField(2);
  @$pb.TagNumber(2)
  StepSummary ensureSummary() => $_ensure(1);
}

