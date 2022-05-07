// Code generated by protoc-gen-go. DO NOT EDIT.
// source: file.proto

package pb

import (
	context "context"
	fmt "fmt"
	proto "github.com/golang/protobuf/proto"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
	math "math"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.ProtoPackageIsVersion3 // please upgrade the proto package

type Hospital struct {
	Name                 string   `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty"`
	Region               string   `protobuf:"bytes,2,opt,name=region,proto3" json:"region,omitempty"`
	Location             string   `protobuf:"bytes,3,opt,name=location,proto3" json:"location,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *Hospital) Reset()         { *m = Hospital{} }
func (m *Hospital) String() string { return proto.CompactTextString(m) }
func (*Hospital) ProtoMessage()    {}
func (*Hospital) Descriptor() ([]byte, []int) {
	return fileDescriptor_9188e3b7e55e1162, []int{0}
}

func (m *Hospital) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_Hospital.Unmarshal(m, b)
}
func (m *Hospital) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_Hospital.Marshal(b, m, deterministic)
}
func (m *Hospital) XXX_Merge(src proto.Message) {
	xxx_messageInfo_Hospital.Merge(m, src)
}
func (m *Hospital) XXX_Size() int {
	return xxx_messageInfo_Hospital.Size(m)
}
func (m *Hospital) XXX_DiscardUnknown() {
	xxx_messageInfo_Hospital.DiscardUnknown(m)
}

var xxx_messageInfo_Hospital proto.InternalMessageInfo

func (m *Hospital) GetName() string {
	if m != nil {
		return m.Name
	}
	return ""
}

func (m *Hospital) GetRegion() string {
	if m != nil {
		return m.Region
	}
	return ""
}

func (m *Hospital) GetLocation() string {
	if m != nil {
		return m.Location
	}
	return ""
}

type Response struct {
	Value                string   `protobuf:"bytes,1,opt,name=value,proto3" json:"value,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *Response) Reset()         { *m = Response{} }
func (m *Response) String() string { return proto.CompactTextString(m) }
func (*Response) ProtoMessage()    {}
func (*Response) Descriptor() ([]byte, []int) {
	return fileDescriptor_9188e3b7e55e1162, []int{1}
}

func (m *Response) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_Response.Unmarshal(m, b)
}
func (m *Response) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_Response.Marshal(b, m, deterministic)
}
func (m *Response) XXX_Merge(src proto.Message) {
	xxx_messageInfo_Response.Merge(m, src)
}
func (m *Response) XXX_Size() int {
	return xxx_messageInfo_Response.Size(m)
}
func (m *Response) XXX_DiscardUnknown() {
	xxx_messageInfo_Response.DiscardUnknown(m)
}

var xxx_messageInfo_Response proto.InternalMessageInfo

func (m *Response) GetValue() string {
	if m != nil {
		return m.Value
	}
	return ""
}

func init() {
	proto.RegisterType((*Hospital)(nil), "proto.Hospital")
	proto.RegisterType((*Response)(nil), "proto.Response")
}

func init() { proto.RegisterFile("file.proto", fileDescriptor_9188e3b7e55e1162) }

var fileDescriptor_9188e3b7e55e1162 = []byte{
	// 172 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0xe2, 0x4a, 0xcb, 0xcc, 0x49,
	0xd5, 0x2b, 0x28, 0xca, 0x2f, 0xc9, 0x17, 0x62, 0x05, 0x53, 0x4a, 0x41, 0x5c, 0x1c, 0x1e, 0xf9,
	0xc5, 0x05, 0x99, 0x25, 0x89, 0x39, 0x42, 0x42, 0x5c, 0x2c, 0x79, 0x89, 0xb9, 0xa9, 0x12, 0x8c,
	0x0a, 0x8c, 0x1a, 0x9c, 0x41, 0x60, 0xb6, 0x90, 0x18, 0x17, 0x5b, 0x51, 0x6a, 0x7a, 0x66, 0x7e,
	0x9e, 0x04, 0x13, 0x58, 0x14, 0xca, 0x13, 0x92, 0xe2, 0xe2, 0xc8, 0xc9, 0x4f, 0x4e, 0x2c, 0x01,
	0xc9, 0x30, 0x83, 0x65, 0xe0, 0x7c, 0x25, 0x05, 0x2e, 0x8e, 0xa0, 0xd4, 0xe2, 0x82, 0xfc, 0xbc,
	0xe2, 0x54, 0x21, 0x11, 0x2e, 0xd6, 0xb2, 0xc4, 0x9c, 0x52, 0x98, 0xa1, 0x10, 0x8e, 0x91, 0x13,
	0x17, 0x1f, 0xcc, 0xd6, 0xe0, 0xd4, 0xa2, 0xb2, 0xd4, 0x22, 0x21, 0x03, 0x2e, 0x9e, 0x80, 0xfc,
	0xe2, 0x12, 0xb8, 0x5b, 0xf8, 0x21, 0xce, 0xd4, 0x83, 0x09, 0x48, 0xc1, 0x04, 0x60, 0x26, 0x3b,
	0xf1, 0x46, 0x71, 0x67, 0x40, 0x25, 0xf5, 0x0b, 0x92, 0x92, 0xd8, 0xc0, 0xd2, 0xc6, 0x80, 0x00,
	0x00, 0x00, 0xff, 0xff, 0x59, 0x67, 0xdf, 0xc5, 0xe4, 0x00, 0x00, 0x00,
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion4

// HospitalServerClient is the client API for HospitalServer service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type HospitalServerClient interface {
	PostHospital(ctx context.Context, in *Hospital, opts ...grpc.CallOption) (*Response, error)
}

type hospitalServerClient struct {
	cc *grpc.ClientConn
}

func NewHospitalServerClient(cc *grpc.ClientConn) HospitalServerClient {
	return &hospitalServerClient{cc}
}

func (c *hospitalServerClient) PostHospital(ctx context.Context, in *Hospital, opts ...grpc.CallOption) (*Response, error) {
	out := new(Response)
	err := c.cc.Invoke(ctx, "/proto.HospitalServer/PostHospital", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// HospitalServerServer is the server API for HospitalServer service.
type HospitalServerServer interface {
	PostHospital(context.Context, *Hospital) (*Response, error)
}

// UnimplementedHospitalServerServer can be embedded to have forward compatible implementations.
type UnimplementedHospitalServerServer struct {
}

func (*UnimplementedHospitalServerServer) PostHospital(ctx context.Context, req *Hospital) (*Response, error) {
	return nil, status.Errorf(codes.Unimplemented, "method PostHospital not implemented")
}

func RegisterHospitalServerServer(s *grpc.Server, srv HospitalServerServer) {
	s.RegisterService(&_HospitalServer_serviceDesc, srv)
}

func _HospitalServer_PostHospital_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Hospital)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(HospitalServerServer).PostHospital(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/proto.HospitalServer/PostHospital",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(HospitalServerServer).PostHospital(ctx, req.(*Hospital))
	}
	return interceptor(ctx, in, info, handler)
}

var _HospitalServer_serviceDesc = grpc.ServiceDesc{
	ServiceName: "proto.HospitalServer",
	HandlerType: (*HospitalServerServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "PostHospital",
			Handler:    _HospitalServer_PostHospital_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "file.proto",
}