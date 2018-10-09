//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/OutboundGatewayMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelOutboundGatewayMessage")
#ifdef RESTRICT_NetI2pRouterTunnelOutboundGatewayMessage
#define INCLUDE_ALL_NetI2pRouterTunnelOutboundGatewayMessage 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelOutboundGatewayMessage 1
#endif
#undef RESTRICT_NetI2pRouterTunnelOutboundGatewayMessage

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelOutboundGatewayMessage_) && (INCLUDE_ALL_NetI2pRouterTunnelOutboundGatewayMessage || defined(INCLUDE_NetI2pRouterTunnelOutboundGatewayMessage))
#define NetI2pRouterTunnelOutboundGatewayMessage_

#define RESTRICT_NetI2pRouterTunnelPendingGatewayMessage 1
#define INCLUDE_NetI2pRouterTunnelPendingGatewayMessage 1
#include "net/i2p/router/tunnel/PendingGatewayMessage.h"

#define RESTRICT_NetI2pRouterUtilCDPQEntry 1
#define INCLUDE_NetI2pRouterUtilCDPQEntry 1
#include "net/i2p/router/util/CDPQEntry.h"

@class NetI2pDataHash;
@class NetI2pDataTunnelId;
@protocol NetI2pDataI2npI2NPMessage;

@interface NetI2pRouterTunnelOutboundGatewayMessage : NetI2pRouterTunnelPendingGatewayMessage < NetI2pRouterUtilCDPQEntry >

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)message
                                         withNetI2pDataHash:(NetI2pDataHash *)toRouter
                                     withNetI2pDataTunnelId:(NetI2pDataTunnelId *)toTunnel;

- (jint)getPriority;

- (jlong)getSeqNum;

- (void)setSeqNumWithLong:(jlong)num;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelOutboundGatewayMessage)

FOUNDATION_EXPORT void NetI2pRouterTunnelOutboundGatewayMessage_initWithNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_(NetI2pRouterTunnelOutboundGatewayMessage *self, id<NetI2pDataI2npI2NPMessage> message, NetI2pDataHash *toRouter, NetI2pDataTunnelId *toTunnel);

FOUNDATION_EXPORT NetI2pRouterTunnelOutboundGatewayMessage *new_NetI2pRouterTunnelOutboundGatewayMessage_initWithNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_(id<NetI2pDataI2npI2NPMessage> message, NetI2pDataHash *toRouter, NetI2pDataTunnelId *toTunnel) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelOutboundGatewayMessage *create_NetI2pRouterTunnelOutboundGatewayMessage_initWithNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_(id<NetI2pDataI2npI2NPMessage> message, NetI2pDataHash *toRouter, NetI2pDataTunnelId *toTunnel);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelOutboundGatewayMessage)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelOutboundGatewayMessage")
