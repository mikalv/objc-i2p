//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/udp/ACKBitfield.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTransportUdpACKBitfield")
#ifdef RESTRICT_NetI2pRouterTransportUdpACKBitfield
#define INCLUDE_ALL_NetI2pRouterTransportUdpACKBitfield 0
#else
#define INCLUDE_ALL_NetI2pRouterTransportUdpACKBitfield 1
#endif
#undef RESTRICT_NetI2pRouterTransportUdpACKBitfield

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTransportUdpACKBitfield_) && (INCLUDE_ALL_NetI2pRouterTransportUdpACKBitfield || defined(INCLUDE_NetI2pRouterTransportUdpACKBitfield))
#define NetI2pRouterTransportUdpACKBitfield_

@protocol NetI2pRouterTransportUdpACKBitfield < JavaObject >

- (jlong)getMessageId;

- (jint)fragmentCount;

- (jboolean)receivedWithInt:(jint)fragmentNum;

- (jboolean)receivedComplete;

- (jint)ackCount;

- (jint)highestReceived;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTransportUdpACKBitfield)

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportUdpACKBitfield)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTransportUdpACKBitfield")