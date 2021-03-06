//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/OutboundSender.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelOutboundSender")
#ifdef RESTRICT_NetI2pRouterTunnelOutboundSender
#define INCLUDE_ALL_NetI2pRouterTunnelOutboundSender 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelOutboundSender 1
#endif
#undef RESTRICT_NetI2pRouterTunnelOutboundSender

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelOutboundSender_) && (INCLUDE_ALL_NetI2pRouterTunnelOutboundSender || defined(INCLUDE_NetI2pRouterTunnelOutboundSender))
#define NetI2pRouterTunnelOutboundSender_

#define RESTRICT_NetI2pRouterTunnelTunnelGateway 1
#define INCLUDE_NetI2pRouterTunnelTunnelGateway_Sender 1
#include "net/i2p/router/tunnel/TunnelGateway.h"

@class IOSByteArray;
@class NetI2pI2PAppContext;
@class NetI2pRouterTunnelTunnelCreatorConfig;
@protocol NetI2pRouterTunnelTunnelGateway_Receiver;

@interface NetI2pRouterTunnelOutboundSender : NSObject < NetI2pRouterTunnelTunnelGateway_Sender >

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
            withNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)config;

- (jlong)sendPreprocessedWithByteArray:(IOSByteArray *)preprocessed
withNetI2pRouterTunnelTunnelGateway_Receiver:(id<NetI2pRouterTunnelTunnelGateway_Receiver>)receiver;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelOutboundSender)

FOUNDATION_EXPORT void NetI2pRouterTunnelOutboundSender_initWithNetI2pI2PAppContext_withNetI2pRouterTunnelTunnelCreatorConfig_(NetI2pRouterTunnelOutboundSender *self, NetI2pI2PAppContext *ctx, NetI2pRouterTunnelTunnelCreatorConfig *config);

FOUNDATION_EXPORT NetI2pRouterTunnelOutboundSender *new_NetI2pRouterTunnelOutboundSender_initWithNetI2pI2PAppContext_withNetI2pRouterTunnelTunnelCreatorConfig_(NetI2pI2PAppContext *ctx, NetI2pRouterTunnelTunnelCreatorConfig *config) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelOutboundSender *create_NetI2pRouterTunnelOutboundSender_initWithNetI2pI2PAppContext_withNetI2pRouterTunnelTunnelCreatorConfig_(NetI2pI2PAppContext *ctx, NetI2pRouterTunnelTunnelCreatorConfig *config);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelOutboundSender)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelOutboundSender")
