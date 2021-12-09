// Copyright 2015 gRPC authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.26.0
// 	protoc        v3.15.8
// source: proto/step.proto

package proto

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// 搜索选项
type Option struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	RootPath           []string `protobuf:"bytes,1,rep,name=RootPath,proto3" json:"RootPath,omitempty"`                     // 目标根目录
	SearchSubPath      bool     `protobuf:"varint,2,opt,name=SearchSubPath,proto3" json:"SearchSubPath,omitempty"`          // 搜索子目录
	MatchCase          bool     `protobuf:"varint,3,opt,name=MatchCase,proto3" json:"MatchCase,omitempty"`                  // 区分大小写
	FileNamePart       []string `protobuf:"bytes,4,rep,name=FileNamePart,proto3" json:"FileNamePart,omitempty"`             // 目标文件名关键字
	FileType           []string `protobuf:"bytes,5,rep,name=FileType,proto3" json:"FileType,omitempty"`                     // 目标文件类型
	Pattern            string   `protobuf:"bytes,6,opt,name=Pattern,proto3" json:"Pattern,omitempty"`                       // 搜索模式
	IgnorePath         []string `protobuf:"bytes,7,rep,name=IgnorePath,proto3" json:"IgnorePath,omitempty"`                 // 忽略目录（目录名完全相同，设置此项有助于提高搜索效率，常用忽略目录: .git, .svn）
	IgnoreFileNamePart []string `protobuf:"bytes,8,rep,name=IgnoreFileNamePart,proto3" json:"IgnoreFileNamePart,omitempty"` // 忽略文件名关键字
	IgnoreType         []string `protobuf:"bytes,9,rep,name=IgnoreType,proto3" json:"IgnoreType,omitempty"`                 // 忽略文件类型
	IgnorePattern      string   `protobuf:"bytes,10,opt,name=IgnorePattern,proto3" json:"IgnorePattern,omitempty"`          // 忽略模式
	ShowDetail         bool     `protobuf:"varint,11,opt,name=ShowDetail,proto3" json:"ShowDetail,omitempty"`               // 是否显示文件详细信息标志
}

func (x *Option) Reset() {
	*x = Option{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_step_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Option) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Option) ProtoMessage() {}

func (x *Option) ProtoReflect() protoreflect.Message {
	mi := &file_proto_step_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Option.ProtoReflect.Descriptor instead.
func (*Option) Descriptor() ([]byte, []int) {
	return file_proto_step_proto_rawDescGZIP(), []int{0}
}

func (x *Option) GetRootPath() []string {
	if x != nil {
		return x.RootPath
	}
	return nil
}

func (x *Option) GetSearchSubPath() bool {
	if x != nil {
		return x.SearchSubPath
	}
	return false
}

func (x *Option) GetMatchCase() bool {
	if x != nil {
		return x.MatchCase
	}
	return false
}

func (x *Option) GetFileNamePart() []string {
	if x != nil {
		return x.FileNamePart
	}
	return nil
}

func (x *Option) GetFileType() []string {
	if x != nil {
		return x.FileType
	}
	return nil
}

func (x *Option) GetPattern() string {
	if x != nil {
		return x.Pattern
	}
	return ""
}

func (x *Option) GetIgnorePath() []string {
	if x != nil {
		return x.IgnorePath
	}
	return nil
}

func (x *Option) GetIgnoreFileNamePart() []string {
	if x != nil {
		return x.IgnoreFileNamePart
	}
	return nil
}

func (x *Option) GetIgnoreType() []string {
	if x != nil {
		return x.IgnoreType
	}
	return nil
}

func (x *Option) GetIgnorePattern() string {
	if x != nil {
		return x.IgnorePattern
	}
	return ""
}

func (x *Option) GetShowDetail() bool {
	if x != nil {
		return x.ShowDetail
	}
	return false
}

// 代码行数信息
type StepInfo struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	CommentRuleDefined bool   `protobuf:"varint,1,opt,name=CommentRuleDefined,proto3" json:"CommentRuleDefined,omitempty"` // 存在注释标志定义 true:存在 false:不存在
	File               string `protobuf:"bytes,2,opt,name=File,proto3" json:"File,omitempty"`                              // 文件名（全路径）
	FileName           string `protobuf:"bytes,3,opt,name=FileName,proto3" json:"FileName,omitempty"`                      // 文件名
	TotalStep          int32  `protobuf:"varint,4,opt,name=TotalStep,proto3" json:"TotalStep,omitempty"`                   // 总行数
	EmptyLineStep      int32  `protobuf:"varint,5,opt,name=EmptyLineStep,proto3" json:"EmptyLineStep,omitempty"`           // 空行数
	CommentStep        int32  `protobuf:"varint,6,opt,name=CommentStep,proto3" json:"CommentStep,omitempty"`               // 注释行数
	SourceStep         int32  `protobuf:"varint,7,opt,name=SourceStep,proto3" json:"SourceStep,omitempty"`                 // 代码行数
	ValidStep          int32  `protobuf:"varint,8,opt,name=ValidStep,proto3" json:"ValidStep,omitempty"`                   // 有效行数(注释+代码)
	ExInfo             string `protobuf:"bytes,9,opt,name=ExInfo,proto3" json:"ExInfo,omitempty"`                          // 扩展信息
	Counted            bool   `protobuf:"varint,10,opt,name=Counted,proto3" json:"Counted,omitempty"`                      // 已统计标志 true:已统计 false:未统计
	CommentDefined     bool   `protobuf:"varint,11,opt,name=CommentDefined,proto3" json:"CommentDefined,omitempty"`        // 存在注释配置 true:存在 false:不存在
}

func (x *StepInfo) Reset() {
	*x = StepInfo{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_step_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *StepInfo) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*StepInfo) ProtoMessage() {}

func (x *StepInfo) ProtoReflect() protoreflect.Message {
	mi := &file_proto_step_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use StepInfo.ProtoReflect.Descriptor instead.
func (*StepInfo) Descriptor() ([]byte, []int) {
	return file_proto_step_proto_rawDescGZIP(), []int{1}
}

func (x *StepInfo) GetCommentRuleDefined() bool {
	if x != nil {
		return x.CommentRuleDefined
	}
	return false
}

func (x *StepInfo) GetFile() string {
	if x != nil {
		return x.File
	}
	return ""
}

func (x *StepInfo) GetFileName() string {
	if x != nil {
		return x.FileName
	}
	return ""
}

func (x *StepInfo) GetTotalStep() int32 {
	if x != nil {
		return x.TotalStep
	}
	return 0
}

func (x *StepInfo) GetEmptyLineStep() int32 {
	if x != nil {
		return x.EmptyLineStep
	}
	return 0
}

func (x *StepInfo) GetCommentStep() int32 {
	if x != nil {
		return x.CommentStep
	}
	return 0
}

func (x *StepInfo) GetSourceStep() int32 {
	if x != nil {
		return x.SourceStep
	}
	return 0
}

func (x *StepInfo) GetValidStep() int32 {
	if x != nil {
		return x.ValidStep
	}
	return 0
}

func (x *StepInfo) GetExInfo() string {
	if x != nil {
		return x.ExInfo
	}
	return ""
}

func (x *StepInfo) GetCounted() bool {
	if x != nil {
		return x.Counted
	}
	return false
}

func (x *StepInfo) GetCommentDefined() bool {
	if x != nil {
		return x.CommentDefined
	}
	return false
}

// 代码行数信息汇总
type StepSummary struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Info             []*StepInfo `protobuf:"bytes,1,rep,name=Info,proto3" json:"Info,omitempty"`                          // 代码行数统计结果
	CountedFileCount int32       `protobuf:"varint,2,opt,name=CountedFileCount,proto3" json:"CountedFileCount,omitempty"` // 统计文件总数
	FlatFile         []string    `protobuf:"bytes,3,rep,name=FlatFile,proto3" json:"FlatFile,omitempty"`                  // 无注标志定义文件
	UnCountedFile    []string    `protobuf:"bytes,4,rep,name=UnCountedFile,proto3" json:"UnCountedFile,omitempty"`        // 未统计文件一览
	FileCount        int32       `protobuf:"varint,5,opt,name=FileCount,proto3" json:"FileCount,omitempty"`               // 总行数
	TotalStep        int32       `protobuf:"varint,6,opt,name=TotalStep,proto3" json:"TotalStep,omitempty"`               // 总行数
	EmptyLineStep    int32       `protobuf:"varint,7,opt,name=EmptyLineStep,proto3" json:"EmptyLineStep,omitempty"`       // 空行数
	CommentStep      int32       `protobuf:"varint,8,opt,name=CommentStep,proto3" json:"CommentStep,omitempty"`           // 注释行数
	SourceStep       int32       `protobuf:"varint,9,opt,name=SourceStep,proto3" json:"SourceStep,omitempty"`             // 代码行数
	ValidStep        int32       `protobuf:"varint,10,opt,name=ValidStep,proto3" json:"ValidStep,omitempty"`              // 有效行数(注释+代码)
}

func (x *StepSummary) Reset() {
	*x = StepSummary{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_step_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *StepSummary) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*StepSummary) ProtoMessage() {}

func (x *StepSummary) ProtoReflect() protoreflect.Message {
	mi := &file_proto_step_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use StepSummary.ProtoReflect.Descriptor instead.
func (*StepSummary) Descriptor() ([]byte, []int) {
	return file_proto_step_proto_rawDescGZIP(), []int{2}
}

func (x *StepSummary) GetInfo() []*StepInfo {
	if x != nil {
		return x.Info
	}
	return nil
}

func (x *StepSummary) GetCountedFileCount() int32 {
	if x != nil {
		return x.CountedFileCount
	}
	return 0
}

func (x *StepSummary) GetFlatFile() []string {
	if x != nil {
		return x.FlatFile
	}
	return nil
}

func (x *StepSummary) GetUnCountedFile() []string {
	if x != nil {
		return x.UnCountedFile
	}
	return nil
}

func (x *StepSummary) GetFileCount() int32 {
	if x != nil {
		return x.FileCount
	}
	return 0
}

func (x *StepSummary) GetTotalStep() int32 {
	if x != nil {
		return x.TotalStep
	}
	return 0
}

func (x *StepSummary) GetEmptyLineStep() int32 {
	if x != nil {
		return x.EmptyLineStep
	}
	return 0
}

func (x *StepSummary) GetCommentStep() int32 {
	if x != nil {
		return x.CommentStep
	}
	return 0
}

func (x *StepSummary) GetSourceStep() int32 {
	if x != nil {
		return x.SourceStep
	}
	return 0
}

func (x *StepSummary) GetValidStep() int32 {
	if x != nil {
		return x.ValidStep
	}
	return 0
}

// The request message containing the user's name.
type StepRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Name   string  `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty"`
	Option *Option `protobuf:"bytes,2,opt,name=option,proto3" json:"option,omitempty"`
}

func (x *StepRequest) Reset() {
	*x = StepRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_step_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *StepRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*StepRequest) ProtoMessage() {}

func (x *StepRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_step_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use StepRequest.ProtoReflect.Descriptor instead.
func (*StepRequest) Descriptor() ([]byte, []int) {
	return file_proto_step_proto_rawDescGZIP(), []int{3}
}

func (x *StepRequest) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *StepRequest) GetOption() *Option {
	if x != nil {
		return x.Option
	}
	return nil
}

// The response message containing the greetings
type StepReply struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Message string       `protobuf:"bytes,1,opt,name=message,proto3" json:"message,omitempty"`
	Summary *StepSummary `protobuf:"bytes,2,opt,name=summary,proto3" json:"summary,omitempty"`
}

func (x *StepReply) Reset() {
	*x = StepReply{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_step_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *StepReply) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*StepReply) ProtoMessage() {}

func (x *StepReply) ProtoReflect() protoreflect.Message {
	mi := &file_proto_step_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use StepReply.ProtoReflect.Descriptor instead.
func (*StepReply) Descriptor() ([]byte, []int) {
	return file_proto_step_proto_rawDescGZIP(), []int{4}
}

func (x *StepReply) GetMessage() string {
	if x != nil {
		return x.Message
	}
	return ""
}

func (x *StepReply) GetSummary() *StepSummary {
	if x != nil {
		return x.Summary
	}
	return nil
}

var File_proto_step_proto protoreflect.FileDescriptor

var file_proto_step_proto_rawDesc = []byte{
	0x0a, 0x10, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x73, 0x74, 0x65, 0x70, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x12, 0x0a, 0x62, 0x65, 0x74, 0x74, 0x65, 0x72, 0x73, 0x74, 0x65, 0x70, 0x22, 0xf8,
	0x02, 0x0a, 0x06, 0x4f, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x1a, 0x0a, 0x08, 0x52, 0x6f, 0x6f,
	0x74, 0x50, 0x61, 0x74, 0x68, 0x18, 0x01, 0x20, 0x03, 0x28, 0x09, 0x52, 0x08, 0x52, 0x6f, 0x6f,
	0x74, 0x50, 0x61, 0x74, 0x68, 0x12, 0x24, 0x0a, 0x0d, 0x53, 0x65, 0x61, 0x72, 0x63, 0x68, 0x53,
	0x75, 0x62, 0x50, 0x61, 0x74, 0x68, 0x18, 0x02, 0x20, 0x01, 0x28, 0x08, 0x52, 0x0d, 0x53, 0x65,
	0x61, 0x72, 0x63, 0x68, 0x53, 0x75, 0x62, 0x50, 0x61, 0x74, 0x68, 0x12, 0x1c, 0x0a, 0x09, 0x4d,
	0x61, 0x74, 0x63, 0x68, 0x43, 0x61, 0x73, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x08, 0x52, 0x09,
	0x4d, 0x61, 0x74, 0x63, 0x68, 0x43, 0x61, 0x73, 0x65, 0x12, 0x22, 0x0a, 0x0c, 0x46, 0x69, 0x6c,
	0x65, 0x4e, 0x61, 0x6d, 0x65, 0x50, 0x61, 0x72, 0x74, 0x18, 0x04, 0x20, 0x03, 0x28, 0x09, 0x52,
	0x0c, 0x46, 0x69, 0x6c, 0x65, 0x4e, 0x61, 0x6d, 0x65, 0x50, 0x61, 0x72, 0x74, 0x12, 0x1a, 0x0a,
	0x08, 0x46, 0x69, 0x6c, 0x65, 0x54, 0x79, 0x70, 0x65, 0x18, 0x05, 0x20, 0x03, 0x28, 0x09, 0x52,
	0x08, 0x46, 0x69, 0x6c, 0x65, 0x54, 0x79, 0x70, 0x65, 0x12, 0x18, 0x0a, 0x07, 0x50, 0x61, 0x74,
	0x74, 0x65, 0x72, 0x6e, 0x18, 0x06, 0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x50, 0x61, 0x74, 0x74,
	0x65, 0x72, 0x6e, 0x12, 0x1e, 0x0a, 0x0a, 0x49, 0x67, 0x6e, 0x6f, 0x72, 0x65, 0x50, 0x61, 0x74,
	0x68, 0x18, 0x07, 0x20, 0x03, 0x28, 0x09, 0x52, 0x0a, 0x49, 0x67, 0x6e, 0x6f, 0x72, 0x65, 0x50,
	0x61, 0x74, 0x68, 0x12, 0x2e, 0x0a, 0x12, 0x49, 0x67, 0x6e, 0x6f, 0x72, 0x65, 0x46, 0x69, 0x6c,
	0x65, 0x4e, 0x61, 0x6d, 0x65, 0x50, 0x61, 0x72, 0x74, 0x18, 0x08, 0x20, 0x03, 0x28, 0x09, 0x52,
	0x12, 0x49, 0x67, 0x6e, 0x6f, 0x72, 0x65, 0x46, 0x69, 0x6c, 0x65, 0x4e, 0x61, 0x6d, 0x65, 0x50,
	0x61, 0x72, 0x74, 0x12, 0x1e, 0x0a, 0x0a, 0x49, 0x67, 0x6e, 0x6f, 0x72, 0x65, 0x54, 0x79, 0x70,
	0x65, 0x18, 0x09, 0x20, 0x03, 0x28, 0x09, 0x52, 0x0a, 0x49, 0x67, 0x6e, 0x6f, 0x72, 0x65, 0x54,
	0x79, 0x70, 0x65, 0x12, 0x24, 0x0a, 0x0d, 0x49, 0x67, 0x6e, 0x6f, 0x72, 0x65, 0x50, 0x61, 0x74,
	0x74, 0x65, 0x72, 0x6e, 0x18, 0x0a, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0d, 0x49, 0x67, 0x6e, 0x6f,
	0x72, 0x65, 0x50, 0x61, 0x74, 0x74, 0x65, 0x72, 0x6e, 0x12, 0x1e, 0x0a, 0x0a, 0x53, 0x68, 0x6f,
	0x77, 0x44, 0x65, 0x74, 0x61, 0x69, 0x6c, 0x18, 0x0b, 0x20, 0x01, 0x28, 0x08, 0x52, 0x0a, 0x53,
	0x68, 0x6f, 0x77, 0x44, 0x65, 0x74, 0x61, 0x69, 0x6c, 0x22, 0xe8, 0x02, 0x0a, 0x08, 0x53, 0x74,
	0x65, 0x70, 0x49, 0x6e, 0x66, 0x6f, 0x12, 0x2e, 0x0a, 0x12, 0x43, 0x6f, 0x6d, 0x6d, 0x65, 0x6e,
	0x74, 0x52, 0x75, 0x6c, 0x65, 0x44, 0x65, 0x66, 0x69, 0x6e, 0x65, 0x64, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x08, 0x52, 0x12, 0x43, 0x6f, 0x6d, 0x6d, 0x65, 0x6e, 0x74, 0x52, 0x75, 0x6c, 0x65, 0x44,
	0x65, 0x66, 0x69, 0x6e, 0x65, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x46, 0x69, 0x6c, 0x65, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x46, 0x69, 0x6c, 0x65, 0x12, 0x1a, 0x0a, 0x08, 0x46, 0x69,
	0x6c, 0x65, 0x4e, 0x61, 0x6d, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x46, 0x69,
	0x6c, 0x65, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x1c, 0x0a, 0x09, 0x54, 0x6f, 0x74, 0x61, 0x6c, 0x53,
	0x74, 0x65, 0x70, 0x18, 0x04, 0x20, 0x01, 0x28, 0x05, 0x52, 0x09, 0x54, 0x6f, 0x74, 0x61, 0x6c,
	0x53, 0x74, 0x65, 0x70, 0x12, 0x24, 0x0a, 0x0d, 0x45, 0x6d, 0x70, 0x74, 0x79, 0x4c, 0x69, 0x6e,
	0x65, 0x53, 0x74, 0x65, 0x70, 0x18, 0x05, 0x20, 0x01, 0x28, 0x05, 0x52, 0x0d, 0x45, 0x6d, 0x70,
	0x74, 0x79, 0x4c, 0x69, 0x6e, 0x65, 0x53, 0x74, 0x65, 0x70, 0x12, 0x20, 0x0a, 0x0b, 0x43, 0x6f,
	0x6d, 0x6d, 0x65, 0x6e, 0x74, 0x53, 0x74, 0x65, 0x70, 0x18, 0x06, 0x20, 0x01, 0x28, 0x05, 0x52,
	0x0b, 0x43, 0x6f, 0x6d, 0x6d, 0x65, 0x6e, 0x74, 0x53, 0x74, 0x65, 0x70, 0x12, 0x1e, 0x0a, 0x0a,
	0x53, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x53, 0x74, 0x65, 0x70, 0x18, 0x07, 0x20, 0x01, 0x28, 0x05,
	0x52, 0x0a, 0x53, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x53, 0x74, 0x65, 0x70, 0x12, 0x1c, 0x0a, 0x09,
	0x56, 0x61, 0x6c, 0x69, 0x64, 0x53, 0x74, 0x65, 0x70, 0x18, 0x08, 0x20, 0x01, 0x28, 0x05, 0x52,
	0x09, 0x56, 0x61, 0x6c, 0x69, 0x64, 0x53, 0x74, 0x65, 0x70, 0x12, 0x16, 0x0a, 0x06, 0x45, 0x78,
	0x49, 0x6e, 0x66, 0x6f, 0x18, 0x09, 0x20, 0x01, 0x28, 0x09, 0x52, 0x06, 0x45, 0x78, 0x49, 0x6e,
	0x66, 0x6f, 0x12, 0x18, 0x0a, 0x07, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x65, 0x64, 0x18, 0x0a, 0x20,
	0x01, 0x28, 0x08, 0x52, 0x07, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x65, 0x64, 0x12, 0x26, 0x0a, 0x0e,
	0x43, 0x6f, 0x6d, 0x6d, 0x65, 0x6e, 0x74, 0x44, 0x65, 0x66, 0x69, 0x6e, 0x65, 0x64, 0x18, 0x0b,
	0x20, 0x01, 0x28, 0x08, 0x52, 0x0e, 0x43, 0x6f, 0x6d, 0x6d, 0x65, 0x6e, 0x74, 0x44, 0x65, 0x66,
	0x69, 0x6e, 0x65, 0x64, 0x22, 0xe7, 0x02, 0x0a, 0x0b, 0x53, 0x74, 0x65, 0x70, 0x53, 0x75, 0x6d,
	0x6d, 0x61, 0x72, 0x79, 0x12, 0x28, 0x0a, 0x04, 0x49, 0x6e, 0x66, 0x6f, 0x18, 0x01, 0x20, 0x03,
	0x28, 0x0b, 0x32, 0x14, 0x2e, 0x62, 0x65, 0x74, 0x74, 0x65, 0x72, 0x73, 0x74, 0x65, 0x70, 0x2e,
	0x53, 0x74, 0x65, 0x70, 0x49, 0x6e, 0x66, 0x6f, 0x52, 0x04, 0x49, 0x6e, 0x66, 0x6f, 0x12, 0x2a,
	0x0a, 0x10, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x65, 0x64, 0x46, 0x69, 0x6c, 0x65, 0x43, 0x6f, 0x75,
	0x6e, 0x74, 0x18, 0x02, 0x20, 0x01, 0x28, 0x05, 0x52, 0x10, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x65,
	0x64, 0x46, 0x69, 0x6c, 0x65, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x12, 0x1a, 0x0a, 0x08, 0x46, 0x6c,
	0x61, 0x74, 0x46, 0x69, 0x6c, 0x65, 0x18, 0x03, 0x20, 0x03, 0x28, 0x09, 0x52, 0x08, 0x46, 0x6c,
	0x61, 0x74, 0x46, 0x69, 0x6c, 0x65, 0x12, 0x24, 0x0a, 0x0d, 0x55, 0x6e, 0x43, 0x6f, 0x75, 0x6e,
	0x74, 0x65, 0x64, 0x46, 0x69, 0x6c, 0x65, 0x18, 0x04, 0x20, 0x03, 0x28, 0x09, 0x52, 0x0d, 0x55,
	0x6e, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x65, 0x64, 0x46, 0x69, 0x6c, 0x65, 0x12, 0x1c, 0x0a, 0x09,
	0x46, 0x69, 0x6c, 0x65, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x18, 0x05, 0x20, 0x01, 0x28, 0x05, 0x52,
	0x09, 0x46, 0x69, 0x6c, 0x65, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x12, 0x1c, 0x0a, 0x09, 0x54, 0x6f,
	0x74, 0x61, 0x6c, 0x53, 0x74, 0x65, 0x70, 0x18, 0x06, 0x20, 0x01, 0x28, 0x05, 0x52, 0x09, 0x54,
	0x6f, 0x74, 0x61, 0x6c, 0x53, 0x74, 0x65, 0x70, 0x12, 0x24, 0x0a, 0x0d, 0x45, 0x6d, 0x70, 0x74,
	0x79, 0x4c, 0x69, 0x6e, 0x65, 0x53, 0x74, 0x65, 0x70, 0x18, 0x07, 0x20, 0x01, 0x28, 0x05, 0x52,
	0x0d, 0x45, 0x6d, 0x70, 0x74, 0x79, 0x4c, 0x69, 0x6e, 0x65, 0x53, 0x74, 0x65, 0x70, 0x12, 0x20,
	0x0a, 0x0b, 0x43, 0x6f, 0x6d, 0x6d, 0x65, 0x6e, 0x74, 0x53, 0x74, 0x65, 0x70, 0x18, 0x08, 0x20,
	0x01, 0x28, 0x05, 0x52, 0x0b, 0x43, 0x6f, 0x6d, 0x6d, 0x65, 0x6e, 0x74, 0x53, 0x74, 0x65, 0x70,
	0x12, 0x1e, 0x0a, 0x0a, 0x53, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x53, 0x74, 0x65, 0x70, 0x18, 0x09,
	0x20, 0x01, 0x28, 0x05, 0x52, 0x0a, 0x53, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x53, 0x74, 0x65, 0x70,
	0x12, 0x1c, 0x0a, 0x09, 0x56, 0x61, 0x6c, 0x69, 0x64, 0x53, 0x74, 0x65, 0x70, 0x18, 0x0a, 0x20,
	0x01, 0x28, 0x05, 0x52, 0x09, 0x56, 0x61, 0x6c, 0x69, 0x64, 0x53, 0x74, 0x65, 0x70, 0x22, 0x4d,
	0x0a, 0x0b, 0x53, 0x74, 0x65, 0x70, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x12, 0x0a,
	0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d,
	0x65, 0x12, 0x2a, 0x0a, 0x06, 0x6f, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x02, 0x20, 0x01, 0x28,
	0x0b, 0x32, 0x12, 0x2e, 0x62, 0x65, 0x74, 0x74, 0x65, 0x72, 0x73, 0x74, 0x65, 0x70, 0x2e, 0x4f,
	0x70, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x06, 0x6f, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x22, 0x58, 0x0a,
	0x09, 0x53, 0x74, 0x65, 0x70, 0x52, 0x65, 0x70, 0x6c, 0x79, 0x12, 0x18, 0x0a, 0x07, 0x6d, 0x65,
	0x73, 0x73, 0x61, 0x67, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x6d, 0x65, 0x73,
	0x73, 0x61, 0x67, 0x65, 0x12, 0x31, 0x0a, 0x07, 0x73, 0x75, 0x6d, 0x6d, 0x61, 0x72, 0x79, 0x18,
	0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x17, 0x2e, 0x62, 0x65, 0x74, 0x74, 0x65, 0x72, 0x73, 0x74,
	0x65, 0x70, 0x2e, 0x53, 0x74, 0x65, 0x70, 0x53, 0x75, 0x6d, 0x6d, 0x61, 0x72, 0x79, 0x52, 0x07,
	0x73, 0x75, 0x6d, 0x6d, 0x61, 0x72, 0x79, 0x32, 0x44, 0x0a, 0x04, 0x53, 0x74, 0x65, 0x70, 0x12,
	0x3c, 0x0a, 0x08, 0x53, 0x61, 0x79, 0x48, 0x65, 0x6c, 0x6c, 0x6f, 0x12, 0x17, 0x2e, 0x62, 0x65,
	0x74, 0x74, 0x65, 0x72, 0x73, 0x74, 0x65, 0x70, 0x2e, 0x53, 0x74, 0x65, 0x70, 0x52, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x1a, 0x15, 0x2e, 0x62, 0x65, 0x74, 0x74, 0x65, 0x72, 0x73, 0x74, 0x65,
	0x70, 0x2e, 0x53, 0x74, 0x65, 0x70, 0x52, 0x65, 0x70, 0x6c, 0x79, 0x22, 0x00, 0x42, 0x4e, 0x0a,
	0x18, 0x63, 0x6f, 0x6d, 0x2e, 0x73, 0x75, 0x6e, 0x6a, 0x69, 0x61, 0x73, 0x68, 0x75, 0x2e, 0x62,
	0x65, 0x74, 0x74, 0x65, 0x72, 0x73, 0x74, 0x65, 0x70, 0x42, 0x09, 0x53, 0x74, 0x65, 0x70, 0x50,
	0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x25, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63,
	0x6f, 0x6d, 0x2f, 0x62, 0x65, 0x74, 0x74, 0x65, 0x72, 0x73, 0x75, 0x6e, 0x2f, 0x62, 0x65, 0x74,
	0x74, 0x65, 0x72, 0x73, 0x74, 0x65, 0x70, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x06, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_proto_step_proto_rawDescOnce sync.Once
	file_proto_step_proto_rawDescData = file_proto_step_proto_rawDesc
)

func file_proto_step_proto_rawDescGZIP() []byte {
	file_proto_step_proto_rawDescOnce.Do(func() {
		file_proto_step_proto_rawDescData = protoimpl.X.CompressGZIP(file_proto_step_proto_rawDescData)
	})
	return file_proto_step_proto_rawDescData
}

var file_proto_step_proto_msgTypes = make([]protoimpl.MessageInfo, 5)
var file_proto_step_proto_goTypes = []interface{}{
	(*Option)(nil),      // 0: betterstep.Option
	(*StepInfo)(nil),    // 1: betterstep.StepInfo
	(*StepSummary)(nil), // 2: betterstep.StepSummary
	(*StepRequest)(nil), // 3: betterstep.StepRequest
	(*StepReply)(nil),   // 4: betterstep.StepReply
}
var file_proto_step_proto_depIdxs = []int32{
	1, // 0: betterstep.StepSummary.Info:type_name -> betterstep.StepInfo
	0, // 1: betterstep.StepRequest.option:type_name -> betterstep.Option
	2, // 2: betterstep.StepReply.summary:type_name -> betterstep.StepSummary
	3, // 3: betterstep.Step.SayHello:input_type -> betterstep.StepRequest
	4, // 4: betterstep.Step.SayHello:output_type -> betterstep.StepReply
	4, // [4:5] is the sub-list for method output_type
	3, // [3:4] is the sub-list for method input_type
	3, // [3:3] is the sub-list for extension type_name
	3, // [3:3] is the sub-list for extension extendee
	0, // [0:3] is the sub-list for field type_name
}

func init() { file_proto_step_proto_init() }
func file_proto_step_proto_init() {
	if File_proto_step_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_proto_step_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Option); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_step_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*StepInfo); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_step_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*StepSummary); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_step_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*StepRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_step_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*StepReply); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_proto_step_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   5,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_proto_step_proto_goTypes,
		DependencyIndexes: file_proto_step_proto_depIdxs,
		MessageInfos:      file_proto_step_proto_msgTypes,
	}.Build()
	File_proto_step_proto = out.File
	file_proto_step_proto_rawDesc = nil
	file_proto_step_proto_goTypes = nil
	file_proto_step_proto_depIdxs = nil
}
