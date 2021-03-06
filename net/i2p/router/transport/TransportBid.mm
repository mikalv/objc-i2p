//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/TransportBid.java
//

#include "J2ObjC_source.h"
#include "net/i2p/router/transport/Transport.h"
#include "net/i2p/router/transport/TransportBid.h"

@interface NetI2pRouterTransportTransportBid () {
 @public
  jint _latencyMs_;
  id<NetI2pRouterTransportTransport> _transport_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTransportTransportBid, _transport_, id<NetI2pRouterTransportTransport>)

@implementation NetI2pRouterTransportTransportBid

+ (jint)TRANSIENT_FAIL {
  return NetI2pRouterTransportTransportBid_TRANSIENT_FAIL;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterTransportTransportBid_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)getLatencyMs {
  return _latencyMs_;
}

- (void)setLatencyMsWithInt:(jint)milliseconds {
  _latencyMs_ = milliseconds;
}

- (id<NetI2pRouterTransportTransport>)getTransport {
  return _transport_;
}

- (void)setTransportWithNetI2pRouterTransportTransport:(id<NetI2pRouterTransportTransport>)transport {
  JreStrongAssign(&_transport_, transport);
}

- (void)dealloc {
  RELEASE_(_transport_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTransportTransport;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getLatencyMs);
  methods[2].selector = @selector(setLatencyMsWithInt:);
  methods[3].selector = @selector(getTransport);
  methods[4].selector = @selector(setTransportWithNetI2pRouterTransportTransport:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_latencyMs_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_transport_", "LNetI2pRouterTransportTransport;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "TRANSIENT_FAIL", "I", .constantValue.asInt = NetI2pRouterTransportTransportBid_TRANSIENT_FAIL, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setLatencyMs", "I", "setTransport", "LNetI2pRouterTransportTransport;" };
  static const J2ObjcClassInfo _NetI2pRouterTransportTransportBid = { "TransportBid", "net.i2p.router.transport", ptrTable, methods, fields, 7, 0x1, 5, 3, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterTransportTransportBid;
}

@end

void NetI2pRouterTransportTransportBid_init(NetI2pRouterTransportTransportBid *self) {
  NSObject_init(self);
  self->_latencyMs_ = -1;
}

NetI2pRouterTransportTransportBid *new_NetI2pRouterTransportTransportBid_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportTransportBid, init)
}

NetI2pRouterTransportTransportBid *create_NetI2pRouterTransportTransportBid_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportTransportBid, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTransportTransportBid)
