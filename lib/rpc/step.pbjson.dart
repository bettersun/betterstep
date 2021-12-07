///
//  Generated code. Do not modify.
//  source: step.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use optionDescriptor instead')
const Option$json = const {
  '1': 'Option',
  '2': const [
    const {'1': 'RootPath', '3': 1, '4': 3, '5': 9, '10': 'RootPath'},
    const {'1': 'SearchSubPath', '3': 2, '4': 1, '5': 8, '10': 'SearchSubPath'},
    const {'1': 'MatchCase', '3': 3, '4': 1, '5': 8, '10': 'MatchCase'},
    const {'1': 'FileNamePart', '3': 4, '4': 3, '5': 9, '10': 'FileNamePart'},
    const {'1': 'FileType', '3': 5, '4': 3, '5': 9, '10': 'FileType'},
    const {'1': 'Pattern', '3': 6, '4': 1, '5': 9, '10': 'Pattern'},
    const {'1': 'IgnorePath', '3': 7, '4': 3, '5': 9, '10': 'IgnorePath'},
    const {'1': 'IgnoreFileNamePart', '3': 8, '4': 3, '5': 9, '10': 'IgnoreFileNamePart'},
    const {'1': 'IgnoreType', '3': 9, '4': 3, '5': 9, '10': 'IgnoreType'},
    const {'1': 'IgnorePattern', '3': 10, '4': 1, '5': 9, '10': 'IgnorePattern'},
    const {'1': 'ShowDetail', '3': 11, '4': 1, '5': 8, '10': 'ShowDetail'},
  ],
};

/// Descriptor for `Option`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionDescriptor = $convert.base64Decode('CgZPcHRpb24SGgoIUm9vdFBhdGgYASADKAlSCFJvb3RQYXRoEiQKDVNlYXJjaFN1YlBhdGgYAiABKAhSDVNlYXJjaFN1YlBhdGgSHAoJTWF0Y2hDYXNlGAMgASgIUglNYXRjaENhc2USIgoMRmlsZU5hbWVQYXJ0GAQgAygJUgxGaWxlTmFtZVBhcnQSGgoIRmlsZVR5cGUYBSADKAlSCEZpbGVUeXBlEhgKB1BhdHRlcm4YBiABKAlSB1BhdHRlcm4SHgoKSWdub3JlUGF0aBgHIAMoCVIKSWdub3JlUGF0aBIuChJJZ25vcmVGaWxlTmFtZVBhcnQYCCADKAlSEklnbm9yZUZpbGVOYW1lUGFydBIeCgpJZ25vcmVUeXBlGAkgAygJUgpJZ25vcmVUeXBlEiQKDUlnbm9yZVBhdHRlcm4YCiABKAlSDUlnbm9yZVBhdHRlcm4SHgoKU2hvd0RldGFpbBgLIAEoCFIKU2hvd0RldGFpbA==');
@$core.Deprecated('Use stepInfoDescriptor instead')
const StepInfo$json = const {
  '1': 'StepInfo',
  '2': const [
    const {'1': 'CommentRuleDefined', '3': 1, '4': 1, '5': 8, '10': 'CommentRuleDefined'},
    const {'1': 'File', '3': 2, '4': 1, '5': 9, '10': 'File'},
    const {'1': 'FileName', '3': 3, '4': 1, '5': 9, '10': 'FileName'},
    const {'1': 'TotalStep', '3': 4, '4': 1, '5': 5, '10': 'TotalStep'},
    const {'1': 'EmptyLineStep', '3': 5, '4': 1, '5': 5, '10': 'EmptyLineStep'},
    const {'1': 'CommentStep', '3': 6, '4': 1, '5': 5, '10': 'CommentStep'},
    const {'1': 'SourceStep', '3': 7, '4': 1, '5': 5, '10': 'SourceStep'},
    const {'1': 'ValidStep', '3': 8, '4': 1, '5': 5, '10': 'ValidStep'},
    const {'1': 'ExInfo', '3': 9, '4': 1, '5': 9, '10': 'ExInfo'},
    const {'1': 'Counted', '3': 10, '4': 1, '5': 8, '10': 'Counted'},
  ],
};

/// Descriptor for `StepInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepInfoDescriptor = $convert.base64Decode('CghTdGVwSW5mbxIuChJDb21tZW50UnVsZURlZmluZWQYASABKAhSEkNvbW1lbnRSdWxlRGVmaW5lZBISCgRGaWxlGAIgASgJUgRGaWxlEhoKCEZpbGVOYW1lGAMgASgJUghGaWxlTmFtZRIcCglUb3RhbFN0ZXAYBCABKAVSCVRvdGFsU3RlcBIkCg1FbXB0eUxpbmVTdGVwGAUgASgFUg1FbXB0eUxpbmVTdGVwEiAKC0NvbW1lbnRTdGVwGAYgASgFUgtDb21tZW50U3RlcBIeCgpTb3VyY2VTdGVwGAcgASgFUgpTb3VyY2VTdGVwEhwKCVZhbGlkU3RlcBgIIAEoBVIJVmFsaWRTdGVwEhYKBkV4SW5mbxgJIAEoCVIGRXhJbmZvEhgKB0NvdW50ZWQYCiABKAhSB0NvdW50ZWQ=');
@$core.Deprecated('Use stepSummaryDescriptor instead')
const StepSummary$json = const {
  '1': 'StepSummary',
  '2': const [
    const {'1': 'Info', '3': 1, '4': 3, '5': 11, '6': '.betterstep.StepInfo', '10': 'Info'},
    const {'1': 'FlatFile', '3': 2, '4': 3, '5': 9, '10': 'FlatFile'},
    const {'1': 'UnCountedFile', '3': 3, '4': 3, '5': 9, '10': 'UnCountedFile'},
    const {'1': 'FileCount', '3': 4, '4': 1, '5': 5, '10': 'FileCount'},
    const {'1': 'TotalStep', '3': 5, '4': 1, '5': 5, '10': 'TotalStep'},
    const {'1': 'EmptyLineStep', '3': 6, '4': 1, '5': 5, '10': 'EmptyLineStep'},
    const {'1': 'CommentStep', '3': 7, '4': 1, '5': 5, '10': 'CommentStep'},
    const {'1': 'SourceStep', '3': 8, '4': 1, '5': 5, '10': 'SourceStep'},
    const {'1': 'ValidStep', '3': 9, '4': 1, '5': 5, '10': 'ValidStep'},
  ],
};

/// Descriptor for `StepSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepSummaryDescriptor = $convert.base64Decode('CgtTdGVwU3VtbWFyeRIoCgRJbmZvGAEgAygLMhQuYmV0dGVyc3RlcC5TdGVwSW5mb1IESW5mbxIaCghGbGF0RmlsZRgCIAMoCVIIRmxhdEZpbGUSJAoNVW5Db3VudGVkRmlsZRgDIAMoCVINVW5Db3VudGVkRmlsZRIcCglGaWxlQ291bnQYBCABKAVSCUZpbGVDb3VudBIcCglUb3RhbFN0ZXAYBSABKAVSCVRvdGFsU3RlcBIkCg1FbXB0eUxpbmVTdGVwGAYgASgFUg1FbXB0eUxpbmVTdGVwEiAKC0NvbW1lbnRTdGVwGAcgASgFUgtDb21tZW50U3RlcBIeCgpTb3VyY2VTdGVwGAggASgFUgpTb3VyY2VTdGVwEhwKCVZhbGlkU3RlcBgJIAEoBVIJVmFsaWRTdGVw');
@$core.Deprecated('Use stepRequestDescriptor instead')
const StepRequest$json = const {
  '1': 'StepRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'option', '3': 2, '4': 1, '5': 11, '6': '.betterstep.Option', '10': 'option'},
  ],
};

/// Descriptor for `StepRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepRequestDescriptor = $convert.base64Decode('CgtTdGVwUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEioKBm9wdGlvbhgCIAEoCzISLmJldHRlcnN0ZXAuT3B0aW9uUgZvcHRpb24=');
@$core.Deprecated('Use stepReplyDescriptor instead')
const StepReply$json = const {
  '1': 'StepReply',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'summary', '3': 2, '4': 1, '5': 11, '6': '.betterstep.StepSummary', '10': 'summary'},
  ],
};

/// Descriptor for `StepReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepReplyDescriptor = $convert.base64Decode('CglTdGVwUmVwbHkSGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZRIxCgdzdW1tYXJ5GAIgASgLMhcuYmV0dGVyc3RlcC5TdGVwU3VtbWFyeVIHc3VtbWFyeQ==');
