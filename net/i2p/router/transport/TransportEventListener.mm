//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/TransportEventListener.java
//

#include "J2ObjC_source.h"
#include "net/i2p/router/transport/TransportEventListener.h"

@interface NetI2pRouterTransportTransportEventListener : NSObject

@end

@implementation NetI2pRouterTransportTransportEventListener

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(messageReceivedWithNetI2pDataI2npI2NPMessage:withNetI2pDataRouterRouterIdentity:withNetI2pDataHash:);
  methods[1].selector = @selector(transportAddressChanged);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "messageReceived", "LNetI2pDataI2npI2NPMessage;LNetI2pDataRouterRouterIdentity;LNetI2pDataHash;" };
  static const J2ObjcClassInfo _NetI2pRouterTransportTransportEventListener = { "TransportEventListener", "net.i2p.router.transport", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterTransportTransportEventListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(NetI2pRouterTransportTransportEventListener)
