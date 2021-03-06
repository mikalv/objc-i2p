//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/ntcp/OutboundEstablishState.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTransportNtcpOutboundEstablishState")
#ifdef RESTRICT_NetI2pRouterTransportNtcpOutboundEstablishState
#define INCLUDE_ALL_NetI2pRouterTransportNtcpOutboundEstablishState 0
#else
#define INCLUDE_ALL_NetI2pRouterTransportNtcpOutboundEstablishState 1
#endif
#undef RESTRICT_NetI2pRouterTransportNtcpOutboundEstablishState

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTransportNtcpOutboundEstablishState_) && (INCLUDE_ALL_NetI2pRouterTransportNtcpOutboundEstablishState || defined(INCLUDE_NetI2pRouterTransportNtcpOutboundEstablishState))
#define NetI2pRouterTransportNtcpOutboundEstablishState_

#define RESTRICT_NetI2pRouterTransportNtcpEstablishBase 1
#define INCLUDE_NetI2pRouterTransportNtcpEstablishBase 1
#include "net/i2p/router/transport/ntcp/EstablishBase.h"

@class JavaNioByteBuffer;
@class NetI2pRouterRouterContext;
@class NetI2pRouterTransportNtcpNTCPConnection;
@class NetI2pRouterTransportNtcpNTCPTransport;

@interface NetI2pRouterTransportNtcpOutboundEstablishState : NetI2pRouterTransportNtcpEstablishBase

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                 withNetI2pRouterTransportNtcpNTCPTransport:(NetI2pRouterTransportNtcpNTCPTransport *)transport
                withNetI2pRouterTransportNtcpNTCPConnection:(NetI2pRouterTransportNtcpNTCPConnection *)con;

- (jint)getVersion;

- (void)prepareOutbound;

- (void)receiveWithJavaNioByteBuffer:(JavaNioByteBuffer *)src;

#pragma mark Protected

- (void)releaseBufsWithBoolean:(jboolean)isVerified;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTransportNtcpOutboundEstablishState)

FOUNDATION_EXPORT void NetI2pRouterTransportNtcpOutboundEstablishState_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withNetI2pRouterTransportNtcpNTCPConnection_(NetI2pRouterTransportNtcpOutboundEstablishState *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport, NetI2pRouterTransportNtcpNTCPConnection *con);

FOUNDATION_EXPORT NetI2pRouterTransportNtcpOutboundEstablishState *new_NetI2pRouterTransportNtcpOutboundEstablishState_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withNetI2pRouterTransportNtcpNTCPConnection_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport, NetI2pRouterTransportNtcpNTCPConnection *con) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTransportNtcpOutboundEstablishState *create_NetI2pRouterTransportNtcpOutboundEstablishState_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withNetI2pRouterTransportNtcpNTCPConnection_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport, NetI2pRouterTransportNtcpNTCPConnection *con);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportNtcpOutboundEstablishState)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTransportNtcpOutboundEstablishState")
