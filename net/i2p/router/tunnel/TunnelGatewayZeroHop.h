//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/TunnelGatewayZeroHop.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelTunnelGatewayZeroHop")
#ifdef RESTRICT_NetI2pRouterTunnelTunnelGatewayZeroHop
#define INCLUDE_ALL_NetI2pRouterTunnelTunnelGatewayZeroHop 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelTunnelGatewayZeroHop 1
#endif
#undef RESTRICT_NetI2pRouterTunnelTunnelGatewayZeroHop

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelTunnelGatewayZeroHop_) && (INCLUDE_ALL_NetI2pRouterTunnelTunnelGatewayZeroHop || defined(INCLUDE_NetI2pRouterTunnelTunnelGatewayZeroHop))
#define NetI2pRouterTunnelTunnelGatewayZeroHop_

#define RESTRICT_NetI2pRouterTunnelTunnelGateway 1
#define INCLUDE_NetI2pRouterTunnelTunnelGateway 1
#include "net/i2p/router/tunnel/TunnelGateway.h"

@class NetI2pDataHash;
@class NetI2pDataI2npTunnelGatewayMessage;
@class NetI2pDataTunnelId;
@class NetI2pRouterRouterContext;
@class NetI2pRouterTunnelTunnelCreatorConfig;
@protocol NetI2pDataI2npI2NPMessage;
@protocol NetI2pRouterTunnelTunnelGateway_QueuePreprocessor;
@protocol NetI2pRouterTunnelTunnelGateway_Receiver;
@protocol NetI2pRouterTunnelTunnelGateway_Sender;

@interface NetI2pRouterTunnelTunnelGatewayZeroHop : NetI2pRouterTunnelTunnelGateway

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
                  withNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)config;

- (void)addWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)msg
                      withNetI2pDataHash:(NetI2pDataHash *)toRouter
                  withNetI2pDataTunnelId:(NetI2pDataTunnelId *)toTunnel;

- (void)addWithNetI2pDataI2npTunnelGatewayMessage:(NetI2pDataI2npTunnelGatewayMessage *)msg;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)arg0
      withNetI2pRouterTunnelTunnelGateway_QueuePreprocessor:(id<NetI2pRouterTunnelTunnelGateway_QueuePreprocessor>)arg1
                 withNetI2pRouterTunnelTunnelGateway_Sender:(id<NetI2pRouterTunnelTunnelGateway_Sender>)arg2
               withNetI2pRouterTunnelTunnelGateway_Receiver:(id<NetI2pRouterTunnelTunnelGateway_Receiver>)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelTunnelGatewayZeroHop)

FOUNDATION_EXPORT void NetI2pRouterTunnelTunnelGatewayZeroHop_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelTunnelCreatorConfig_(NetI2pRouterTunnelTunnelGatewayZeroHop *self, NetI2pRouterRouterContext *context, NetI2pRouterTunnelTunnelCreatorConfig *config);

FOUNDATION_EXPORT NetI2pRouterTunnelTunnelGatewayZeroHop *new_NetI2pRouterTunnelTunnelGatewayZeroHop_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelTunnelCreatorConfig_(NetI2pRouterRouterContext *context, NetI2pRouterTunnelTunnelCreatorConfig *config) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelTunnelGatewayZeroHop *create_NetI2pRouterTunnelTunnelGatewayZeroHop_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelTunnelCreatorConfig_(NetI2pRouterRouterContext *context, NetI2pRouterTunnelTunnelCreatorConfig *config);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelTunnelGatewayZeroHop)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelTunnelGatewayZeroHop")
