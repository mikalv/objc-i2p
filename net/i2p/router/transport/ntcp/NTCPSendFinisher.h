//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/ntcp/NTCPSendFinisher.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTransportNtcpNTCPSendFinisher")
#ifdef RESTRICT_NetI2pRouterTransportNtcpNTCPSendFinisher
#define INCLUDE_ALL_NetI2pRouterTransportNtcpNTCPSendFinisher 0
#else
#define INCLUDE_ALL_NetI2pRouterTransportNtcpNTCPSendFinisher 1
#endif
#undef RESTRICT_NetI2pRouterTransportNtcpNTCPSendFinisher

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTransportNtcpNTCPSendFinisher_) && (INCLUDE_ALL_NetI2pRouterTransportNtcpNTCPSendFinisher || defined(INCLUDE_NetI2pRouterTransportNtcpNTCPSendFinisher))
#define NetI2pRouterTransportNtcpNTCPSendFinisher_

@class NetI2pI2PAppContext;
@class NetI2pRouterOutNetMessage;
@class NetI2pRouterTransportNtcpNTCPTransport;

@interface NetI2pRouterTransportNtcpNTCPSendFinisher : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
           withNetI2pRouterTransportNtcpNTCPTransport:(NetI2pRouterTransportNtcpNTCPTransport *)transport;

- (void)addWithNetI2pRouterOutNetMessage:(NetI2pRouterOutNetMessage *)msg;

- (void)start;

- (void)stop;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pRouterTransportNtcpNTCPSendFinisher)

FOUNDATION_EXPORT void NetI2pRouterTransportNtcpNTCPSendFinisher_initWithNetI2pI2PAppContext_withNetI2pRouterTransportNtcpNTCPTransport_(NetI2pRouterTransportNtcpNTCPSendFinisher *self, NetI2pI2PAppContext *context, NetI2pRouterTransportNtcpNTCPTransport *transport);

FOUNDATION_EXPORT NetI2pRouterTransportNtcpNTCPSendFinisher *new_NetI2pRouterTransportNtcpNTCPSendFinisher_initWithNetI2pI2PAppContext_withNetI2pRouterTransportNtcpNTCPTransport_(NetI2pI2PAppContext *context, NetI2pRouterTransportNtcpNTCPTransport *transport) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTransportNtcpNTCPSendFinisher *create_NetI2pRouterTransportNtcpNTCPSendFinisher_initWithNetI2pI2PAppContext_withNetI2pRouterTransportNtcpNTCPTransport_(NetI2pI2PAppContext *context, NetI2pRouterTransportNtcpNTCPTransport *transport);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportNtcpNTCPSendFinisher)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTransportNtcpNTCPSendFinisher")