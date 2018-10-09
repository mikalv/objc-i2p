//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/udp/RemoteHostId.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/router/transport/udp/RemoteHostId.h"
#include "net/i2p/util/Addresses.h"

@interface NetI2pRouterTransportUdpRemoteHostId () {
 @public
  IOSByteArray *_ip_;
  jint _port_;
  NetI2pDataHash *_peerHash_;
  jint _hashCode_;
}

- (instancetype)initWithByteArray:(IOSByteArray *)ip
                          withInt:(jint)port
               withNetI2pDataHash:(NetI2pDataHash *)peerHash;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpRemoteHostId, _ip_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpRemoteHostId, _peerHash_, NetI2pDataHash *)

__attribute__((unused)) static void NetI2pRouterTransportUdpRemoteHostId_initWithByteArray_withInt_withNetI2pDataHash_(NetI2pRouterTransportUdpRemoteHostId *self, IOSByteArray *ip, jint port, NetI2pDataHash *peerHash);

__attribute__((unused)) static NetI2pRouterTransportUdpRemoteHostId *new_NetI2pRouterTransportUdpRemoteHostId_initWithByteArray_withInt_withNetI2pDataHash_(IOSByteArray *ip, jint port, NetI2pDataHash *peerHash) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pRouterTransportUdpRemoteHostId *create_NetI2pRouterTransportUdpRemoteHostId_initWithByteArray_withInt_withNetI2pDataHash_(IOSByteArray *ip, jint port, NetI2pDataHash *peerHash);

@implementation NetI2pRouterTransportUdpRemoteHostId

- (instancetype)initWithByteArray:(IOSByteArray *)ip
                          withInt:(jint)port {
  NetI2pRouterTransportUdpRemoteHostId_initWithByteArray_withInt_(self, ip, port);
  return self;
}

- (instancetype)initWithNetI2pDataHash:(NetI2pDataHash *)peerHash {
  NetI2pRouterTransportUdpRemoteHostId_initWithNetI2pDataHash_(self, peerHash);
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)ip
                          withInt:(jint)port
               withNetI2pDataHash:(NetI2pDataHash *)peerHash {
  NetI2pRouterTransportUdpRemoteHostId_initWithByteArray_withInt_withNetI2pDataHash_(self, ip, port, peerHash);
  return self;
}

- (IOSByteArray *)getIP {
  return _ip_;
}

- (jint)getPort {
  return _port_;
}

- (NetI2pDataHash *)getPeerHash {
  return _peerHash_;
}

- (NSUInteger)hash {
  return _hashCode_;
}

- (jboolean)isEqual:(id)obj {
  if (obj == nil) return false;
  if (!([obj isKindOfClass:[NetI2pRouterTransportUdpRemoteHostId class]])) return false;
  NetI2pRouterTransportUdpRemoteHostId *id_ = (NetI2pRouterTransportUdpRemoteHostId *) cast_chk(obj, [NetI2pRouterTransportUdpRemoteHostId class]);
  return (_port_ == id_->_port_) && NetI2pDataDataHelper_eqWithByteArray_withByteArray_(_ip_, id_->_ip_) && NetI2pDataDataHelper_eqWithId_withId_(_peerHash_, id_->_peerHash_);
}

- (NSString *)description {
  if (_ip_ != nil) {
    return NetI2pUtilAddresses_toStringWithByteArray_withInt_(_ip_, _port_);
  }
  else {
    return [((NetI2pDataHash *) nil_chk(_peerHash_)) description];
  }
}

- (void)dealloc {
  RELEASE_(_ip_);
  RELEASE_(_peerHash_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 2, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataHash;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithByteArray:withInt:);
  methods[1].selector = @selector(initWithNetI2pDataHash:);
  methods[2].selector = @selector(initWithByteArray:withInt:withNetI2pDataHash:);
  methods[3].selector = @selector(getIP);
  methods[4].selector = @selector(getPort);
  methods[5].selector = @selector(getPeerHash);
  methods[6].selector = @selector(hash);
  methods[7].selector = @selector(isEqual:);
  methods[8].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_ip_", "[B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_port_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_peerHash_", "LNetI2pDataHash;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_hashCode_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[BI", "LNetI2pDataHash;", "[BILNetI2pDataHash;", "hashCode", "equals", "LNSObject;", "toString" };
  static const J2ObjcClassInfo _NetI2pRouterTransportUdpRemoteHostId = { "RemoteHostId", "net.i2p.router.transport.udp", ptrTable, methods, fields, 7, 0x10, 9, 4, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterTransportUdpRemoteHostId;
}

@end

void NetI2pRouterTransportUdpRemoteHostId_initWithByteArray_withInt_(NetI2pRouterTransportUdpRemoteHostId *self, IOSByteArray *ip, jint port) {
  NetI2pRouterTransportUdpRemoteHostId_initWithByteArray_withInt_withNetI2pDataHash_(self, ip, port, nil);
}

NetI2pRouterTransportUdpRemoteHostId *new_NetI2pRouterTransportUdpRemoteHostId_initWithByteArray_withInt_(IOSByteArray *ip, jint port) {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportUdpRemoteHostId, initWithByteArray_withInt_, ip, port)
}

NetI2pRouterTransportUdpRemoteHostId *create_NetI2pRouterTransportUdpRemoteHostId_initWithByteArray_withInt_(IOSByteArray *ip, jint port) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportUdpRemoteHostId, initWithByteArray_withInt_, ip, port)
}

void NetI2pRouterTransportUdpRemoteHostId_initWithNetI2pDataHash_(NetI2pRouterTransportUdpRemoteHostId *self, NetI2pDataHash *peerHash) {
  NetI2pRouterTransportUdpRemoteHostId_initWithByteArray_withInt_withNetI2pDataHash_(self, nil, 0, peerHash);
}

NetI2pRouterTransportUdpRemoteHostId *new_NetI2pRouterTransportUdpRemoteHostId_initWithNetI2pDataHash_(NetI2pDataHash *peerHash) {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportUdpRemoteHostId, initWithNetI2pDataHash_, peerHash)
}

NetI2pRouterTransportUdpRemoteHostId *create_NetI2pRouterTransportUdpRemoteHostId_initWithNetI2pDataHash_(NetI2pDataHash *peerHash) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportUdpRemoteHostId, initWithNetI2pDataHash_, peerHash)
}

void NetI2pRouterTransportUdpRemoteHostId_initWithByteArray_withInt_withNetI2pDataHash_(NetI2pRouterTransportUdpRemoteHostId *self, IOSByteArray *ip, jint port, NetI2pDataHash *peerHash) {
  NSObject_init(self);
  JreStrongAssign(&self->_ip_, ip);
  self->_port_ = port;
  JreStrongAssign(&self->_peerHash_, peerHash);
  self->_hashCode_ = NetI2pDataDataHelper_hashCodeWithByteArray_(self->_ip_) ^ NetI2pDataDataHelper_hashCodeWithId_(self->_peerHash_) ^ self->_port_;
}

NetI2pRouterTransportUdpRemoteHostId *new_NetI2pRouterTransportUdpRemoteHostId_initWithByteArray_withInt_withNetI2pDataHash_(IOSByteArray *ip, jint port, NetI2pDataHash *peerHash) {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportUdpRemoteHostId, initWithByteArray_withInt_withNetI2pDataHash_, ip, port, peerHash)
}

NetI2pRouterTransportUdpRemoteHostId *create_NetI2pRouterTransportUdpRemoteHostId_initWithByteArray_withInt_withNetI2pDataHash_(IOSByteArray *ip, jint port, NetI2pDataHash *peerHash) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportUdpRemoteHostId, initWithByteArray_withInt_withNetI2pDataHash_, ip, port, peerHash)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTransportUdpRemoteHostId)